package com.hinnka.mycamera.ui.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
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
import com.hinnka.mycamera.ui.camera.LutIntensitySlider

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
    onRemarksChange: (String) -> Unit,
    onCurveChange: (CurveChannel, FloatArray?) -> Unit = { _, _ -> },
    modifier: Modifier = Modifier
) {
    var selectedTabIndex by remember { mutableIntStateOf(0) }
    var selectedLchTabIndex by remember { mutableIntStateOf(0) }
    var isExpanded by remember { mutableStateOf(true) }

    val tabs = listOf(
        R.string.recipe_tab_palette,  // 0
        R.string.filter,              // 1
        R.string.recipe_tab_light,    // 2
        R.string.recipe_tab_curve,    // 3 (曲线)
        R.string.recipe_tab_color,    // 4
        R.string.recipe_tab_lch,      // 5
        R.string.recipe_tab_texture,  // 6
        R.string.recipe_tab_lens,     // 7
        R.string.recipe_tab_remarks,  // 8
    )
    val parameterGroups = listOf(
        emptyList(),       // 0 palette
        listOf(            // 1 filter
            RecipeParam.LUT_INTENSITY,
        ),
        listOf(            // 2 light
            RecipeParam.EXPOSURE,
            RecipeParam.CONTRAST,
            RecipeParam.HIGHLIGHTS,
            RecipeParam.SHADOWS,
        ),
        emptyList(),       // 3 curve (handled specially)
        listOf(            // 4 color
            RecipeParam.SATURATION,
            RecipeParam.TEMPERATURE,
            RecipeParam.TINT,
            RecipeParam.COLOR
        ),
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

    Column(
        modifier = modifier
            .fillMaxWidth()
    ) {

        // 当前选中的内容
        AnimatedVisibility(isExpanded) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .background(
                        Color.Black.copy(alpha = 0.3f),
                        RoundedCornerShape(8.dp)
                    )
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
                            3 -> {
                                // 曲线编辑器
                                CurveEditorPanel(
                                    currentParams = currentParams,
                                    onCurveChange = onCurveChange,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                            5 -> {
                                // LCH 颜色混合
                                LchSecondaryTabs(
                                    tabs = lchGroups.map { it.first },
                                    selectedTabIndex = selectedLchTabIndex,
                                    onTabSelected = { selectedLchTabIndex = it }
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
                                parameterGroups[selectedTabIndex].forEach { param ->
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
                        remarks = currentParams.remarks,
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
            Row(modifier = Modifier.fillMaxSize().horizontalScroll(rememberScrollState())) {
                tabs.forEachIndexed { index, title ->
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
                            .clickable {
                                if (selectedTabIndex == index) {
                                    isExpanded = !isExpanded
                                } else {
                                    selectedTabIndex = index
                                    isExpanded = true
                                }
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
        }

        Spacer(modifier = Modifier.height(8.dp).background(Color.Black))
    }
}

@Composable
private fun LchSecondaryTabs(
    tabs: List<Int>,
    selectedTabIndex: Int,
    onTabSelected: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceEvenly
    ) {
        tabs.forEachIndexed { indexInRow, _ ->
            val isSelected = selectedTabIndex == indexInRow
            val ringColor = getLchTabColor(indexInRow)

            Box(
                modifier = Modifier
                    .weight(1f)
                    .aspectRatio(1f)
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

        CustomSliderThinThumb(
            value = value,
            onValueChange = onValueChange,
            onDoubleTap = onDoubleTap,
            valueRange = param.minValue..param.maxValue,
            thumbWidth = 3.dp,
            thumbHeight = 20.dp,
            trackHeight = 3.dp,
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
        RecipeParam.RED_LIGHTNESS -> Color(0xFFE53935)
        RecipeParam.ORANGE_HUE,
        RecipeParam.ORANGE_CHROMA,
        RecipeParam.ORANGE_LIGHTNESS -> Color(0xFFFB8C00)
        RecipeParam.YELLOW_HUE,
        RecipeParam.YELLOW_CHROMA,
        RecipeParam.YELLOW_LIGHTNESS -> Color(0xFFFDD835)
        RecipeParam.GREEN_HUE,
        RecipeParam.GREEN_CHROMA,
        RecipeParam.GREEN_LIGHTNESS -> Color(0xFF43A047)
        RecipeParam.CYAN_HUE,
        RecipeParam.CYAN_CHROMA,
        RecipeParam.CYAN_LIGHTNESS -> Color(0xFF00ACC1)
        RecipeParam.BLUE_HUE,
        RecipeParam.BLUE_CHROMA,
        RecipeParam.BLUE_LIGHTNESS -> Color(0xFF1E88E5)
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
        RecipeParam.HALATION -> Color(0xFFFF7043) // 暖橙色（光晕）
        RecipeParam.CHROMATIC_ABERRATION -> Color(0xFFAB47BC) // 紫色（色散）
        RecipeParam.LOW_RES -> Color(0xFF8D6E63) // 棕灰色（低像素）
        RecipeParam.LUT_INTENSITY -> Color(0xFF9E9E9E) // 灰色
    }
}
