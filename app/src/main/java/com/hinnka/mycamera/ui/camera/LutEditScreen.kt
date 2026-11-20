package com.hinnka.mycamera.ui.camera

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.rememberModalBottomSheetState
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.lifecycle.viewmodel.compose.viewModel
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.toEffectParams
import com.hinnka.mycamera.ui.components.AppModalBottomSheet
import com.hinnka.mycamera.ui.components.AppSheetStyle
import com.hinnka.mycamera.ui.components.ColorRecipePanel
import com.hinnka.mycamera.ui.components.CurveChannel
import com.hinnka.mycamera.ui.components.DefaultColorRecipePanelContainerColor
import com.hinnka.mycamera.ui.components.ImageHistogram
import com.hinnka.mycamera.ui.components.LiquidGlassBackdrop
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
    modifier: Modifier = Modifier,
    backdrop: LiquidGlassBackdrop? = null,
) {
    val lutEditViewModel: LutEditViewModel = viewModel()
    val coroutineScope = rememberCoroutineScope()

    var editingParams by remember { mutableStateOf(ColorRecipeParams.DEFAULT) }
    var saveJob by remember { mutableStateOf<Job?>(null) }
    var hasPendingLutSave by remember { mutableStateOf(false) }
    val openingInitialParams = remember(lutId) { initialParams }

    fun loadParams(params: ColorRecipeParams) {
        editingParams = params
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

    val dismissEditor: () -> Unit = {
        flushLutSave()
        onDismiss()
    }
    val editorContent: @Composable (Modifier) -> Unit = { contentModifier ->
        ColorRecipePanel(
            currentParams = editingParams,
            onParamChange = { param, value ->
                onParamsUpdated(param.setValue(editingParams, value))
            },
            onParamsChange = ::onParamsUpdated,
            onRemarksChange = {
                onParamsUpdated(editingParams.copy(remarks = it))
            },
            onCurveChange = { channel, points ->
                onParamsUpdated(
                    when (channel) {
                        CurveChannel.MASTER -> editingParams.copy(masterCurvePoints = points)
                        CurveChannel.RED -> editingParams.copy(redCurvePoints = points)
                        CurveChannel.GREEN -> editingParams.copy(greenCurvePoints = points)
                        CurveChannel.BLUE -> editingParams.copy(blueCurvePoints = points)
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
            containerColor = if (backdrop != null) Color.Transparent else DefaultColorRecipePanelContainerColor,
            modifier = contentModifier
        )
    }

    if (backdrop == null) {
        AppModalBottomSheet(
            containerColor = containerColor,
            style = AppSheetStyle.Translucent,
            onDismissRequest = dismissEditor,
            sheetState = rememberModalBottomSheetState(skipPartiallyExpanded = true),
            modifier = modifier,
            dragHandle = null,
        ) {
            Column(Modifier.fillMaxWidth().navigationBarsPadding()) {
                editorContent(Modifier.fillMaxWidth())
            }
        }
    } else {
        CameraPanelBottomSheet(
            backdrop = backdrop,
            onDismissRequest = dismissEditor,
            modifier = modifier,
        ) {
            val scrollState = rememberScrollState()
            editorContent(Modifier.fillMaxWidth().verticalScroll(scrollState, enabled = scrollState.maxValue > 0))
        }
    }
}
