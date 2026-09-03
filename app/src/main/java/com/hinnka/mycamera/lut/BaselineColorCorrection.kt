package com.hinnka.mycamera.lut

import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.model.ColorRecipeParams

enum class BaselineColorCorrectionTarget {
    RAW
}

data class LutRenderLayer(
    val lutConfig: LutConfig?,
    val colorRecipeParams: ColorRecipeParams?
)

data class ResolvedColorCorrectionStack(
    val target: BaselineColorCorrectionTarget?,
    val baselineLutId: String? = null,
    val creativeLutId: String? = null,
    val baselineLayer: LutRenderLayer? = null,
    val creativeLayer: LutRenderLayer? = null,
) {
    val previewLayer: LutRenderLayer?
        get() = creativeLayer ?: baselineLayer

    val hasStackedLayers: Boolean
        get() = baselineLayer != null && creativeLayer != null
}

class ColorCorrectionPipelineResolver(
    private val lutManager: LutManager
) {
    suspend fun resolveFromMetadata(
        metadata: MediaMetadata
    ): ResolvedColorCorrectionStack {
        val target = metadata.baselineTarget
        val creativeLutId = metadata.lutId
        val baselineLutId = metadata.baselineLutId.takeIf { target == BaselineColorCorrectionTarget.RAW }
        return resolve(
            target = target,
            baselineLutId = baselineLutId,
            baselineRecipeParams = metadata.baselineColorRecipeParams
                .takeIf { target == BaselineColorCorrectionTarget.RAW }
                ?: baselineLutId?.let { lutManager.loadColorRecipeParams(it, target) },
            creativeLutId = creativeLutId,
            creativeRecipeParams = metadata.colorRecipeParams
                ?: creativeLutId?.let { lutManager.loadColorRecipeParams(it) }
        )
    }

    suspend fun resolve(
        target: BaselineColorCorrectionTarget?,
        baselineLutId: String?,
        baselineRecipeParams: ColorRecipeParams?,
        creativeLutId: String?,
        creativeRecipeParams: ColorRecipeParams?,
    ): ResolvedColorCorrectionStack {
        val baselineLayer = resolveLayer(baselineLutId, baselineRecipeParams)
        val creativeLayer = resolveLayer(creativeLutId, creativeRecipeParams)
        return ResolvedColorCorrectionStack(
            target = target,
            baselineLutId = baselineLutId,
            creativeLutId = creativeLutId,
            baselineLayer = baselineLayer,
            creativeLayer = creativeLayer,
        )
    }

    private suspend fun resolveLayer(
        lutId: String?,
        colorRecipeParams: ColorRecipeParams?,
    ): LutRenderLayer? {
        if (lutId == null && colorRecipeParams == null) return null
        return LutRenderLayer(
            lutConfig = lutId?.let { lutManager.loadLut(it) },
            colorRecipeParams = colorRecipeParams ?: ColorRecipeParams.DEFAULT,
        )
    }
}
