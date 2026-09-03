package com.hinnka.mycamera.screencapture

import android.content.Context
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.model.EffectParams
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.firstOrNull

object ScreenCaptureRenderConfigStore {
    data class RenderConfig(
        val creativeLutConfig: LutConfig?,
        val creativeColorRecipeParams: ColorRecipeParams,
        val crop: PhantomPipCrop
    )

    private val _config = MutableStateFlow(
        RenderConfig(
            creativeLutConfig = null,
            creativeColorRecipeParams = ColorRecipeParams.DEFAULT,
            crop = PhantomPipCrop()
        )
    )
    val config: StateFlow<RenderConfig> = _config.asStateFlow()

    fun save(
        creativeLutConfig: LutConfig?,
        creativeColorRecipeParams: ColorRecipeParams,
        crop: PhantomPipCrop
    ) {
        _config.value = RenderConfig(
            creativeLutConfig = creativeLutConfig,
            creativeColorRecipeParams = creativeColorRecipeParams,
            crop = crop.normalized()
        )
    }

    suspend fun syncFromPreferences(
        context: Context,
        lutIdOverride: String? = null,
        cropOverride: PhantomPipCrop? = null,
        creativeRecipeParamsOverride: ColorRecipeParams? = null,
        effectParamsOverride: EffectParams? = null
    ) {
        val repository = ContentRepository.getInstance(context.applicationContext)
        val preferences = repository.userPreferencesRepository.userPreferences.firstOrNull()
        val effectivePreferences = preferences?.let {
            if (lutIdOverride == null) {
                it
            } else {
                it.copy(lutId = lutIdOverride)
            }
        }
        val creativeLutId = effectivePreferences?.lutId
        val creativeRecipeParams = creativeRecipeParamsOverride
            ?: creativeLutId?.let { repository.lutManager.loadColorRecipeParams(it) }
            ?: ColorRecipeParams.DEFAULT
        val effectParams = effectParamsOverride
            ?: effectivePreferences?.activeEffectParams
            ?: EffectParams.DEFAULT

        save(
            creativeLutConfig = creativeLutId?.let { repository.lutManager.loadLut(it) },
            creativeColorRecipeParams = effectParams.applyTo(creativeRecipeParams),
            crop = cropOverride ?: preferences?.phantomPipCrop ?: _config.value.crop
        )
    }
}
