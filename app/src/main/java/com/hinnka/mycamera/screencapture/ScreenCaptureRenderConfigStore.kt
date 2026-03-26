package com.hinnka.mycamera.screencapture

import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

object ScreenCaptureRenderConfigStore {
    data class RenderConfig(
        val lutConfig: LutConfig?,
        val colorRecipeParams: ColorRecipeParams,
        val crop: PhantomPipCrop
    )

    private val _config = MutableStateFlow(
        RenderConfig(
            lutConfig = null,
            colorRecipeParams = ColorRecipeParams.DEFAULT,
            crop = PhantomPipCrop()
        )
    )
    val config: StateFlow<RenderConfig> = _config.asStateFlow()

    fun save(
        lutConfig: LutConfig?,
        colorRecipeParams: ColorRecipeParams,
        crop: PhantomPipCrop
    ) {
        _config.value = RenderConfig(
            lutConfig = lutConfig,
            colorRecipeParams = colorRecipeParams,
            crop = crop.normalized()
        )
    }
}
