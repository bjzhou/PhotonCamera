package com.hinnka.mycamera.ui.components

import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
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
import com.hinnka.mycamera.R
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
    onParamChange: (RecipeParam, Float) -> Unit,
    modifier: Modifier = Modifier
) {
    var selectedTabIndex by remember { mutableIntStateOf(0) }

    val tabs = listOf(
        R.string.recipe_tab_light,
        R.string.recipe_tab_color,
        R.string.recipe_tab_texture,
    )
    val parameterGroups = listOf(
        listOf(
            RecipeParam.EXPOSURE,
            RecipeParam.CONTRAST,
            RecipeParam.HIGHLIGHTS,
            RecipeParam.SHADOWS,
        ),
        listOf(
            RecipeParam.SATURATION,
            RecipeParam.TEMPERATURE,
            RecipeParam.TINT,
            RecipeParam.COLOR
        ),
        listOf(
            RecipeParam.VIGNETTE,
            RecipeParam.FILM_GRAIN,
            RecipeParam.FADE,
            RecipeParam.BLEACH_BYPASS
        )
    )

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(4.dp)
    ) {
        // 自定义 Tab 选择器 (Pill style)
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(36.dp)
                .clip(CircleShape)
                .background(Color.Black.copy(alpha = 0.4f))
                .padding(4.dp)
        ) {
            Row(modifier = Modifier.fillMaxSize()) {
                tabs.forEachIndexed { index, title ->
                    val isSelected = selectedTabIndex == index
                    val backgroundColor by animateColorAsState(
                        if (isSelected) Color.White.copy(alpha = 0.2f) else Color.Transparent,
                        label = "tabBackground"
                    )

                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .fillMaxHeight()
                            .clip(CircleShape)
                            .background(backgroundColor)
                            .clickable { selectedTabIndex = index },
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = stringResource(title),
                            fontSize = 12.sp,
                            fontWeight = if (isSelected) FontWeight.Bold else FontWeight.Normal,
                            color = if (isSelected) Color.White else Color.White.copy(alpha = 0.6f)
                        )
                    }
                }
            }
        }

        Spacer(modifier = Modifier.height(12.dp))

        // 当前选中的参数组
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .background(
                    Color.Black.copy(alpha = 0.3f),
                    RoundedCornerShape(8.dp)
                )
                .padding(8.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
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
                modifier = Modifier.width(64.dp)
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
        RecipeParam.VIGNETTE -> {
            if (value >= 0) {
                String.format("+%.2f", value)
            } else {
                String.format("%.2f", value)
            }
        }

        RecipeParam.FADE,
        RecipeParam.FILM_GRAIN,
        RecipeParam.BLEACH_BYPASS -> String.format("%.2f", value)

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
        RecipeParam.FILM_GRAIN -> Color(0xFF9E9E9E) // 灰色
        RecipeParam.VIGNETTE -> Color(0xFF795548) // 棕色
        RecipeParam.BLEACH_BYPASS -> Color(0xFF00BCD4) // 青色
        RecipeParam.LUT_INTENSITY -> Color(0xFF9E9E9E) // 灰色
    }
}
