package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.SegmentedButton
import androidx.compose.material3.SegmentedButtonDefaults
import androidx.compose.material3.SingleChoiceSegmentedButtonRow
import androidx.compose.material3.Text
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.hinnka.mycamera.R
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.CustomSliderThinThumb
import com.hinnka.mycamera.viewmodel.LutEditViewModel
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

enum class RecipeScope { LUT_GLOBAL, PHOTO_LOCAL }

/**
 * LUT编辑底部弹窗
 *
 * 当 photoRecipeParams 非 null 时，说明这张照片已有独立配方覆盖。
 * onPhotoParamsChange 提供后会在顶部显示 scope 切换，允许用户选择：
 *   - LUT 默认：修改 LUT 全局配方（原有行为）
 *   - 仅此照片：修改照片级覆盖，不影响 LUT
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LutEditBottomSheet(
    lutId: String,
    onDismiss: () -> Unit,
    initialParams: ColorRecipeParams? = null,
    onParamsPreviewChange: ((ColorRecipeParams) -> Unit)? = null,
    // 照片级配方相关（为 null 则隐藏 scope 切换，保持纯 LUT 编辑模式）
    photoRecipeParams: ColorRecipeParams? = null,
    onPhotoParamsChange: ((ColorRecipeParams?) -> Unit)? = null,
    defaultScope: RecipeScope = RecipeScope.LUT_GLOBAL,
    modifier: Modifier = Modifier
) {
    val lutEditViewModel: LutEditViewModel = viewModel()
    val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
    val backgroundColor = Color(0xFF151515)
    val coroutineScope = rememberCoroutineScope()

    val showScopeToggle = onPhotoParamsChange != null

    var currentScope by remember { mutableStateOf(defaultScope) }
    var editingParams by remember { mutableStateOf(ColorRecipeParams.DEFAULT) }
    var paletteState by remember { mutableStateOf(ColorPaletteState.DEFAULT) }
    var saveJob by remember { mutableStateOf<Job?>(null) }
    val openingInitialParams = remember(lutId) { initialParams }

    // 切换 scope 时加载对应的参数
    suspend fun loadParamsForScope(scope: RecipeScope, lutParams: ColorRecipeParams) {
        val params = when (scope) {
            RecipeScope.LUT_GLOBAL -> lutParams
            RecipeScope.PHOTO_LOCAL -> photoRecipeParams ?: lutParams
        }
        editingParams = params
        paletteState = ColorPaletteState(
            x = params.paletteX,
            y = params.paletteY,
            density = params.paletteDensity
        ).normalized()
    }

    fun scheduleLutSave(params: ColorRecipeParams) {
        saveJob?.cancel()
        saveJob = coroutineScope.launch {
            delay(250)
            lutEditViewModel.saveLutColorRecipe(lutId, params)
        }
    }

    fun flushLutSave() {
        saveJob?.cancel()
        lutEditViewModel.saveLutColorRecipe(lutId, editingParams)
    }

    fun onParamsUpdated(newParams: ColorRecipeParams) {
        editingParams = newParams
        onParamsPreviewChange?.invoke(newParams)
        when (currentScope) {
            RecipeScope.LUT_GLOBAL -> scheduleLutSave(newParams)
            RecipeScope.PHOTO_LOCAL -> onPhotoParamsChange?.invoke(newParams)
        }
    }

    // 初始加载
    LaunchedEffect(lutId) {
        val lutParams = openingInitialParams ?: lutEditViewModel.getColorRecipe(lutId)
        loadParamsForScope(currentScope, lutParams)
    }

    ModalBottomSheet(
        onDismissRequest = {
            if (currentScope == RecipeScope.LUT_GLOBAL) flushLutSave()
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
            // Scope 切换（仅在 gallery 编辑模式下显示）
            if (showScopeToggle) {
                SingleChoiceSegmentedButtonRow(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 24.dp)
                ) {
                    RecipeScope.entries.forEachIndexed { index, scope ->
                        SegmentedButton(
                            selected = currentScope == scope,
                            onClick = {
                                if (currentScope != scope) {
                                    // 切换前先把当前 scope 的未提交 LUT 改动 flush 掉
                                    if (currentScope == RecipeScope.LUT_GLOBAL) flushLutSave()
                                    currentScope = scope
                                    coroutineScope.launch {
                                        val lutParams = lutEditViewModel.getColorRecipe(lutId)
                                        loadParamsForScope(scope, lutParams)
                                        // 切换后预览也跟着刷新
                                        onParamsPreviewChange?.invoke(editingParams)
                                    }
                                }
                            },
                            shape = SegmentedButtonDefaults.itemShape(
                                index = index,
                                count = RecipeScope.entries.size
                            ),
                            colors = SegmentedButtonDefaults.colors(
                                activeContainerColor = Color(0xFF2A2A2A),
                                activeContentColor = Color.White,
                                inactiveContainerColor = Color.Transparent,
                                inactiveContentColor = Color.White.copy(alpha = 0.5f),
                                activeBorderColor = Color.White.copy(alpha = 0.3f),
                                inactiveBorderColor = Color.White.copy(alpha = 0.15f)
                            )
                        ) {
                            Text(
                                text = when (scope) {
                                    RecipeScope.LUT_GLOBAL -> stringResource(R.string.recipe_scope_lut)
                                    RecipeScope.PHOTO_LOCAL -> stringResource(R.string.recipe_scope_photo)
                                },
                                fontSize = 12.sp
                            )
                        }
                    }
                }

                // 仅此照片模式下的提示 + 重置按钮
                if (currentScope == RecipeScope.PHOTO_LOCAL) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 24.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = stringResource(R.string.recipe_scope_photo_hint),
                            color = Color.White.copy(alpha = 0.4f),
                            fontSize = 10.sp
                        )
                        if (photoRecipeParams != null) {
                            Text(
                                text = stringResource(R.string.recipe_scope_photo_reset),
                                color = Color(0xFFFF9800).copy(alpha = 0.8f),
                                fontSize = 10.sp,
                                modifier = Modifier
                                    .clip(RoundedCornerShape(4.dp))
                                    .clickable {
                                        onPhotoParamsChange.invoke(null)
                                        coroutineScope.launch {
                                            val lutParams = lutEditViewModel.getColorRecipe(lutId)
                                            loadParamsForScope(RecipeScope.PHOTO_LOCAL, lutParams)
                                            onParamsPreviewChange?.invoke(editingParams)
                                        }
                                    }
                                    .padding(horizontal = 6.dp, vertical = 2.dp)
                            )
                        }
                    }
                } else {
                    Spacer(modifier = Modifier.height(8.dp))
                }
            }

            ColorRecipePanel(
                currentParams = editingParams,
                paletteState = paletteState,
                onPaletteStateChange = { newState ->
                    val normalizedState = newState.normalized()
                    paletteState = normalizedState
                    onParamsUpdated(ColorPaletteMapper.updatePaletteState(editingParams, normalizedState))
                },
                onParamChange = { param, value ->
                    onParamsUpdated(param.setValue(editingParams, value))
                },
                onRemarksChange = {
                    onParamsUpdated(editingParams.copy(remarks = it))
                },
                onCurveChange = { channel, points ->
                    onParamsUpdated(
                        when (channel) {
                            com.hinnka.mycamera.ui.components.CurveChannel.MASTER ->
                                editingParams.copy(masterCurvePoints = points)
                            com.hinnka.mycamera.ui.components.CurveChannel.RED ->
                                editingParams.copy(redCurvePoints = points)
                            com.hinnka.mycamera.ui.components.CurveChannel.GREEN ->
                                editingParams.copy(greenCurvePoints = points)
                            com.hinnka.mycamera.ui.components.CurveChannel.BLUE ->
                                editingParams.copy(blueCurvePoints = points)
                        }
                    )
                },
                modifier = Modifier.fillMaxWidth()
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
