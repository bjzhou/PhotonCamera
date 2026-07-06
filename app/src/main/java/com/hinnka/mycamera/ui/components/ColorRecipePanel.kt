package com.hinnka.mycamera.ui.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
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
import com.hinnka.mycamera.model.RecipeParam

/**
 * 色彩配方控制面板
 *
 * 使用顶部 Tab 切换不同参数组
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
    hideNonBakeable: Boolean = true,
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

    var selectedTabIndex by remember { mutableIntStateOf(0) }
    var selectedLchTabIndex by remember { mutableIntStateOf(0) }
    var selectedCalibrationTabIndex by remember { mutableIntStateOf(0) }
    var isExpanded by remember { mutableStateOf(true) }

    val tabs = listOf(
        R.string.recipe_tab_palette,  // 0
        R.string.recipe_tab_light,    // 1
        R.string.recipe_tab_curve,    // 2 (曲线)
        R.string.recipe_tab_color,    // 3
        R.string.recipe_tab_calibration, // 4
        R.string.recipe_tab_lch,      // 5
        R.string.recipe_tab_texture,  // 6
        R.string.recipe_tab_lens,     // 7
        R.string.recipe_tab_remarks,  // 8
    )
    val parameterGroups = listOf(
        emptyList(),       // 0 palette
        listOf(            // 1 light
            RecipeParam.EXPOSURE,
            RecipeParam.CONTRAST,
            RecipeParam.HIGHLIGHTS,
            RecipeParam.SHADOWS,
        ),
        emptyList(),       // 2 curve (handled specially)
        listOf(            // 3 color
            RecipeParam.SATURATION,
            RecipeParam.TEMPERATURE,
            RecipeParam.TINT,
            RecipeParam.COLOR
        ),
        emptyList(),       // 4 calibration (handled specially)
        emptyList(),       // 5 lch (handled specially)
        listOf(            // 6 texture
            RecipeParam.VIGNETTE,
            RecipeParam.FILM_GRAIN,
            RecipeParam.FADE,
            RecipeParam.BLEACH_BYPASS,
        ),
        listOf(            // 7 lens
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

    fun resetTab(tabIndex: Int) {
        when (tabIndex) {
            0 -> {
                val defaultPaletteState = ColorPaletteState.DEFAULT
                onParamsChange(
                    currentParams.copy(
                        paletteX = defaultPaletteState.x,
                        paletteY = defaultPaletteState.y,
                        paletteDensity = defaultPaletteState.density
                    )
                )
            }
            2 -> onParamsChange(
                currentParams.copy(
                    masterCurvePoints = null,
                    redCurvePoints = null,
                    greenCurvePoints = null,
                    blueCurvePoints = null
                )
            )
            4 -> onParamsChange(resetParams(currentParams, calibrationGroups.flatMap { it.second }))
            5 -> onParamsChange(resetParams(currentParams, lchGroups.flatMap { it.second }))
            8 -> Unit
            else -> {
                val allParams = parameterGroups.getOrNull(tabIndex).orEmpty()
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
            return
        }

        val defaultPaletteState = ColorPaletteState.DEFAULT
        val visibleParams = parameterGroups
            .flatten()
            .filter(isBakeable) + calibrationGroups.flatMap { it.second } + lchGroups.flatMap { it.second }
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
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
    ) {

        // 当前选中的内容
        AnimatedVisibility(isExpanded) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(8.dp),
                contentAlignment = Alignment.TopCenter
            ) {
                if (selectedTabIndex < parameterGroups.size) {
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        when (selectedTabIndex) {
                            0 -> {
                                // 调色盘
                                ColorRecipePalettePanel(
                                    paletteState = paletteState,
                                    onPaletteStateChange = onPaletteStateChange,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                            2 -> {
                                // 曲线编辑器
                                CurveEditorPanel(
                                    currentParams = currentParams,
                                    onCurveChange = onCurveChange,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                            4 -> {
                                // Calibration 颜色校准
                                ColorRingTabs(
                                    count = calibrationGroups.size,
                                    selectedTabIndex = selectedCalibrationTabIndex,
                                    onTabSelected = { selectedCalibrationTabIndex = it },
                                    getColor = { index -> 
                                        when (index) {
                                            0 -> Color(0xFFE53935) // Red
                                            1 -> Color(0xFF43A047) // Green
                                            2 -> Color(0xFF1E88E5) // Blue
                                            else -> Color.White
                                        }
                                    }
                                )

                                Spacer(modifier = Modifier.height(6.dp))

                                calibrationGroups[selectedCalibrationTabIndex].second.forEach { param ->
                                    key(param) {
                                        ColorRecipeSlider(
                                            param = param,
                                            value = param.getValue(currentParams),
                                            onValueChange = { newValue ->
                                                onParamChange(param, newValue)
                                            },
                                            onDoubleTap = {
                                                onParamChange(param, param.defaultValue)
                                            }
                                        )
                                    }
                                }
                            }
                            5 -> {
                                // LCH 颜色混合
                                ColorRingTabs(
                                    count = lchGroups.size,
                                    selectedTabIndex = selectedLchTabIndex,
                                    onTabSelected = { selectedLchTabIndex = it },
                                    getColor = { getLchTabColor(it) }
                                )

                                Spacer(modifier = Modifier.height(6.dp))

                                lchGroups[selectedLchTabIndex].second.forEach { param ->
                                    key(param) {
                                        ColorRecipeSlider(
                                            param = param,
                                            value = param.getValue(currentParams),
                                            onValueChange = { newValue ->
                                                onParamChange(param, newValue)
                                            },
                                            onDoubleTap = {
                                                onParamChange(param, param.defaultValue)
                                            }
                                        )
                                    }
                                }
                            }
                            else -> {
                                val allParams = parameterGroups.getOrNull(selectedTabIndex).orEmpty()
                                val visibleParams = remember(selectedTabIndex, hideNonBakeable) {
                                    if (hideNonBakeable) {
                                        allParams.filter(isBakeable)
                                    } else {
                                        allParams
                                    }
                                }
                                visibleParams.forEach { param ->
                                    key(param) {
                                        ColorRecipeSlider(
                                            param = param,
                                            value = param.getValue(currentParams),
                                            onValueChange = { newValue ->
                                                onParamChange(param, newValue)
                                            },
                                            onDoubleTap = {
                                                onParamChange(param, param.defaultValue)
                                            }
                                        )
                                    }
                                }
                            }
                        }
                    }
                } else {
                    // 备注 Tab
                    ColorRecipeRemarksBar(
                        remarks = currentParams.remarks ?: "",
                        onRemarksChange = onRemarksChange,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }

        Spacer(modifier = Modifier.height(8.dp))

        // 自定义 Tab 选择器 (Pill style)
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp)
                .background(Color.Black)
                .padding(8.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxSize(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .horizontalScroll(rememberScrollState())
                ) {
                    tabs.forEachIndexed { index, title ->
                        if (hideNonBakeable && (title == R.string.recipe_tab_lens || title == R.string.recipe_tab_remarks)) {
                            return@forEachIndexed
                        }
                        val isSelected = selectedTabIndex == index && isExpanded
                        val backgroundColor by animateColorAsState(
                            if (isSelected) Color.White.copy(alpha = 0.2f) else Color.Transparent,
                            label = "tabBackground"
                        )

                        Box(
                            modifier = Modifier
                                .widthIn(min = 48.dp)
                                .fillMaxHeight()
                                .clip(RoundedCornerShape(4.dp))
                                .background(backgroundColor)
                                .pointerInput(index, currentParams) {
                                    detectTapGestures(
                                        onTap = {
                                            selectedTabIndex = index
                                            isExpanded = true
                                        },
                                        onDoubleTap = {
                                            selectedTabIndex = index
                                            isExpanded = true
                                            resetTab(index)
                                        }
                                    )
                                },
                            contentAlignment = Alignment.Center
                        ) {
                            Text(
                                text = stringResource(title),
                                fontSize = 11.sp,
                                fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                                color = if (isSelected) Color.White else Color.White.copy(alpha = 0.6f),
                                modifier = Modifier.padding(horizontal = 4.dp)
                            )
                        }
                    }
                }

                Icon(
                    imageVector = Icons.Default.Refresh,
                    contentDescription = stringResource(R.string.color_recipe_reset_all),
                    tint = Color.White.copy(alpha = 0.72f),
                    modifier = Modifier
                        .padding(start = 8.dp)
                        .size(32.dp)
                        .clip(CircleShape)
                        .background(Color.White.copy(alpha = 0.12f))
                        .clickable { resetAllParams() }
                        .padding(7.dp)
                )
            }
        }

        Spacer(modifier = Modifier.height(8.dp).background(Color.Black))
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
