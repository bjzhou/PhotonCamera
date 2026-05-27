package com.hinnka.mycamera.ui.camera

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import com.hinnka.mycamera.lut.BaselineColorCorrectionTarget
import com.hinnka.mycamera.model.ColorRecipeParams

enum class RecipeScope { LUT_GLOBAL, PHOTO_LOCAL }

enum class LutEditorTarget(val baselineTarget: BaselineColorCorrectionTarget? = null) {
    CREATIVE_GLOBAL,
    BASELINE_JPG(BaselineColorCorrectionTarget.JPG),
    BASELINE_RAW(BaselineColorCorrectionTarget.RAW),
    BASELINE_PHANTOM(BaselineColorCorrectionTarget.PHANTOM)
}

@Composable
fun LutEditBottomSheet(
    @Suppress("unused") lutId: String,
    onDismiss: () -> Unit,
    @Suppress("unused") initialParams: ColorRecipeParams? = null,
    @Suppress("unused") onParamsPreviewChange: ((ColorRecipeParams) -> Unit)? = null,
    @Suppress("unused") photoRecipeParams: ColorRecipeParams? = null,
    @Suppress("unused") onPhotoParamsChange: ((ColorRecipeParams?) -> Unit)? = null,
    @Suppress("unused") defaultScope: RecipeScope = RecipeScope.LUT_GLOBAL,
    @Suppress("unused") editorTarget: LutEditorTarget = LutEditorTarget.CREATIVE_GLOBAL,
    @Suppress("unused") containerColor: Color = Color.Black.copy(alpha = 0.8f),
    @Suppress("unused") modifier: Modifier = Modifier
) {
    onDismiss()
}
