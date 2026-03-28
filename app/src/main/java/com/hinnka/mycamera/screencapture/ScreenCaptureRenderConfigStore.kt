package com.hinnka.mycamera.screencapture

import android.content.Context
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.withContext

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

    suspend fun syncFromPreferences(
        context: Context,
        lutIdOverride: String? = null,
        cropOverride: PhantomPipCrop? = null
    ) {
        val repository = ContentRepository.getInstance(context.applicationContext)
        val preferences = repository.userPreferencesRepository.userPreferences.firstOrNull()
        val effectiveLutId = lutIdOverride
            ?: preferences?.lutId
            ?: repository.getAvailableLuts().firstOrNull { it.isDefault }?.id

        val lutManager = repository.lutManager
        val lutConfig = effectiveLutId?.let { lutId ->
            withContext(Dispatchers.IO) { lutManager.loadLut(lutId) }
        }
        val colorRecipeParams = effectiveLutId?.let { lutId ->
            lutManager.getColorRecipeParams(lutId).first()
        } ?: ColorRecipeParams.DEFAULT

        save(
            lutConfig = lutConfig,
            colorRecipeParams = colorRecipeParams,
            crop = cropOverride ?: preferences?.phantomPipCrop ?: _config.value.crop
        )
    }
}
