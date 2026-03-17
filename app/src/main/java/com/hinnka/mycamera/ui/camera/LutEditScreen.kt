package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.*
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Text
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.CustomSliderThinThumb
import com.hinnka.mycamera.viewmodel.LutEditViewModel
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * LUT编辑底部弹窗
 *
 * 为选中的LUT设置专属的色彩配方参数
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LutEditBottomSheet(
    lutId: String,
    onDismiss: () -> Unit,
    initialParams: ColorRecipeParams? = null,
    onParamsPreviewChange: ((ColorRecipeParams) -> Unit)? = null,
    modifier: Modifier = Modifier
) {
    val viewModel: LutEditViewModel = viewModel()
    val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
    val backgroundColor = Color(0xFF151515)
    val scope = rememberCoroutineScope()

    var editingParams by remember { mutableStateOf(ColorRecipeParams.DEFAULT) }
    var saveJob by remember { mutableStateOf<Job?>(null) }

    fun scheduleSave(params: ColorRecipeParams) {
        saveJob?.cancel()
        saveJob = scope.launch {
            delay(250)
            viewModel.saveLutColorRecipe(lutId, params)
        }
    }

    fun flushSave() {
        saveJob?.cancel()
        viewModel.saveLutColorRecipe(lutId, editingParams)
    }

    LaunchedEffect(lutId, initialParams) {
        editingParams = initialParams ?: viewModel.getColorRecipe(lutId)
    }

    ModalBottomSheet(
        onDismissRequest = {
            flushSave()
            onDismiss()
        },
        sheetState = sheetState,
        containerColor = backgroundColor,
        modifier = modifier,
        scrimColor = Color.Transparent
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .navigationBarsPadding()
        ) {
            LutIntensitySlider(
                intensity = editingParams.lutIntensity,
                onIntensityChange = {
                    val newParams = editingParams.copy(lutIntensity = it)
                    editingParams = newParams
                    onParamsPreviewChange?.invoke(newParams)
                    scheduleSave(newParams)
                }
            )

            // 底部色彩配方面板
            ColorRecipePanel(
                currentParams = editingParams,
                onParamChange = { param, value ->
                    val newParams = param.setValue(editingParams, value)
                    editingParams = newParams
                    onParamsPreviewChange?.invoke(newParams)
                    scheduleSave(newParams)
                },
                onRemarksChange = {
                    val newParams = editingParams.copy(remarks = it)
                    editingParams = newParams
                    onParamsPreviewChange?.invoke(newParams)
                    scheduleSave(newParams)
                },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp, vertical = 16.dp)
            )
        }
    }
}


/**
 * LUT 强度滑块组件
 */
@Composable
fun LutIntensitySlider(
    intensity: Float,
    onIntensityChange: (Float) -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = stringResource(R.string.filter_intensity),
                color = if (enabled) Color.White else Color.Gray,
                fontSize = 12.sp
            )

            Text(
                text = "${(intensity * 100).toInt()}%",
                color = if (enabled) Color.White else Color.Gray,
                fontSize = 10.sp,
                fontWeight = FontWeight.Bold
            )
        }

        CustomSliderThinThumb(
            value = intensity,
            onValueChange = onIntensityChange,
            onDoubleTap = {
                if (enabled) onIntensityChange(1.0f)
            },
            enabled = enabled,
            valueRange = 0f..1f,
            thumbWidth = 3.dp,
            thumbHeight = 22.dp,
            trackHeight = 4.dp,
            activeTrackColor = Color.White,
            inactiveTrackColor = Color.Gray.copy(alpha = 0.5f),
            thumbColor = Color.White,
            modifier = Modifier.fillMaxWidth()
        )
    }
}
