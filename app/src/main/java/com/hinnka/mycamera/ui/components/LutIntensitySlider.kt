package com.hinnka.mycamera.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.RecipeParam
import kotlin.math.roundToInt

/**
 * 编辑面板中的滤镜强度控制。
 */
@Composable
fun LutIntensitySlider(
    intensity: Float,
    onIntensityChange: (Float) -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    val param = RecipeParam.LUT_INTENSITY
    val displayPercent = (param.clamp(intensity) * 100f).roundToInt()
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 12.dp, vertical = 6.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = stringResource(R.string.filter_intensity),
                color = if (enabled) Color.White else Color.Gray,
                fontSize = 12.sp,
                lineHeight = 14.sp
            )

            Text(
                text = "$displayPercent%",
                color = if (enabled) Color.White else Color.Gray,
                fontSize = 12.sp,
                lineHeight = 14.sp,
                fontWeight = FontWeight.Bold,
                fontFamily = androidx.compose.ui.text.font.FontFamily.Monospace,
            )
        }

        CustomSlider(
            value = param.clamp(intensity),
            onValueChange = onIntensityChange,
            onDoubleTap = {
                if (enabled) onIntensityChange(param.defaultValue)
            },
            enabled = enabled,
            valueRange = param.minValue..param.maxValue,
            activeTrackColor = Color.White,
            inactiveTrackColor = Color.Gray.copy(alpha = 0.5f),
            thumbColor = Color.White,
            modifier = Modifier.fillMaxWidth()
        )
    }
}
