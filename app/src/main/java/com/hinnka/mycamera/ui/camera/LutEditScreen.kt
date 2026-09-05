package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.*
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorPaletteState
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.toEffectParams
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.ImageHistogram
import com.hinnka.mycamera.viewmodel.LutEditViewModel
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

enum class LutEditorTarget(val baselineTarget: BaselineColorCorrectionTarget? = null) {
    CREATIVE_GLOBAL(),
    BASELINE_RAW(BaselineColorCorrectionTarget.RAW)
}

/**
 * LUT 色彩配方编辑底部弹窗。物理效果参数存在时，与色彩调整显示在同一编辑面板中。
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LutEditBottomSheet(
    lutId: String,
    onDismiss: () -> Unit,
    initialParams: ColorRecipeParams? = null,
    onParamsPreviewChange: ((ColorRecipeParams) -> Unit)? = null,
    imageHistogram: ImageHistogram? = null,
    showEffects: Boolean = false,
    editorTarget: LutEditorTarget = LutEditorTarget.CREATIVE_GLOBAL,
    containerColor: Color = Color.Transparent,
    modifier: Modifier = Modifier
) {
    val lutEditViewModel: LutEditViewModel = viewModel()
    val sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true)
    val coroutineScope = rememberCoroutineScope()

    var editingParams by remember { mutableStateOf(ColorRecipeParams.DEFAULT) }
    var paletteState by remember { mutableStateOf(ColorPaletteState.DEFAULT) }
    var saveJob by remember { mutableStateOf<Job?>(null) }
    var hasPendingLutSave by remember { mutableStateOf(false) }
    val openingInitialParams = remember(lutId) { initialParams }

    fun loadParams(params: ColorRecipeParams) {
        editingParams = params
        paletteState = ColorPaletteState(
            x = params.paletteX,
            y = params.paletteY,
            density = params.paletteDensity
        ).normalized()
    }

    fun scheduleLutSave(params: ColorRecipeParams) {
        hasPendingLutSave = true
        saveJob?.cancel()
        saveJob = coroutineScope.launch {
            delay(250)
            lutEditViewModel.saveLutColorRecipe(lutId, params, editorTarget.baselineTarget)
            hasPendingLutSave = false
        }
    }

    fun flushLutSave() {
        if (!hasPendingLutSave) return
        saveJob?.cancel()
        saveJob = null
        hasPendingLutSave = false
        lutEditViewModel.saveLutColorRecipe(lutId, editingParams, editorTarget.baselineTarget)
    }

    fun onParamsUpdated(newParams: ColorRecipeParams) {
        editingParams = newParams
        onParamsPreviewChange?.invoke(newParams)
        scheduleLutSave(newParams)
    }

    // 初始加载
    LaunchedEffect(lutId) {
        val lutParams = openingInitialParams ?: lutEditViewModel.getColorRecipe(lutId, editorTarget.baselineTarget)
        loadParams(lutParams)
    }

    DisposableEffect(lutId, editorTarget) {
        onDispose {
            flushLutSave()
        }
    }

    ModalBottomSheet(
        onDismissRequest = {
            flushLutSave()
            onDismiss()
        },
        sheetState = sheetState,
        containerColor = containerColor,
        modifier = modifier,
        scrimColor = Color.Transparent,
        dragHandle = null,
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .navigationBarsPadding()
        ) {
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
                onParamsChange = { newParams ->
                    paletteState = ColorPaletteState(
                        x = newParams.paletteX,
                        y = newParams.paletteY,
                        density = newParams.paletteDensity
                    ).normalized()
                    onParamsUpdated(newParams)
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
                imageHistogram = imageHistogram,
                showLutIntensity = editorTarget == LutEditorTarget.CREATIVE_GLOBAL && lutId != "none",
                currentEffects = editingParams.toEffectParams().takeIf { showEffects },
                onEffectsChange = if (showEffects) {
                    { effects -> onParamsUpdated(effects.applyTo(editingParams)) }
                } else {
                    null
                },
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}
