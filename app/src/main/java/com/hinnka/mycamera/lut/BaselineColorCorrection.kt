package com.hinnka.mycamera.lut

import com.hinnka.mycamera.data.UserPreferences
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.model.ColorRecipeParams

enum class BaselineColorCorrectionTarget {
    JPG,
    RAW,
    PHANTOM
}

data class BaselineColorCorrectionConfig(
    val lutId: String? = null
)

data class LutRenderLayer(
    val lutConfig: LutConfig?,
    val colorRecipeParams: ColorRecipeParams?
)

data class ResolvedColorCorrectionStack(
    val target: BaselineColorCorrectionTarget,
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

fun UserPreferences.getBaselineColorCorrectionConfig(
    target: BaselineColorCorrectionTarget
): BaselineColorCorrectionConfig {
    val lutId = when (target) {
        BaselineColorCorrectionTarget.JPG -> jpgBaselineLutId
        BaselineColorCorrectionTarget.RAW -> rawBaselineLutId
        BaselineColorCorrectionTarget.PHANTOM -> phantomBaselineLutId
    }
    return BaselineColorCorrectionConfig(lutId = lutId)
}

fun UserPreferences.getPrimaryLutId(
    target: BaselineColorCorrectionTarget
): String? {
    return when (target) {
        BaselineColorCorrectionTarget.PHANTOM,
        BaselineColorCorrectionTarget.JPG,
        BaselineColorCorrectionTarget.RAW -> lutId
    }
}

class ColorCorrectionPipelineResolver(
    private val lutManager: LutManager
) {
    suspend fun resolveFromPreferences(
        target: BaselineColorCorrectionTarget,
        preferences: UserPreferences,
        creativeRecipeParams: ColorRecipeParams? = null,
    ): ResolvedColorCorrectionStack {
        val creativeLutId = preferences.getPrimaryLutId(target)
        val baselineLutId = preferences.getBaselineColorCorrectionConfig(target).lutId
        return resolve(
            target = target,
            baselineLutId = baselineLutId,
            baselineRecipeParams = baselineLutId?.let { lutManager.loadColorRecipeParams(it, target) },
            creativeLutId = creativeLutId,
            creativeRecipeParams = creativeRecipeParams
                ?: creativeLutId?.let { lutManager.loadColorRecipeParams(it) }
        )
    }

    suspend fun resolveFromMetadata(
        fallbackTarget: BaselineColorCorrectionTarget,
        metadata: MediaMetadata
    ): ResolvedColorCorrectionStack {
        val target = metadata.baselineTarget ?: fallbackTarget
        val creativeLutId = metadata.lutId
        val baselineLutId = metadata.baselineLutId
        return resolve(
            target = target,
            baselineLutId = baselineLutId,
            baselineRecipeParams = metadata.baselineColorRecipeParams
                ?: baselineLutId?.let { lutManager.loadColorRecipeParams(it, target) },
            creativeLutId = creativeLutId,
            creativeRecipeParams = metadata.colorRecipeParams
                ?: creativeLutId?.let { lutManager.loadColorRecipeParams(it) }
        )
    }

    suspend fun resolve(
        target: BaselineColorCorrectionTarget,
        baselineLutId: String?,
        baselineRecipeParams: ColorRecipeParams?,
        creativeLutId: String?,
        creativeRecipeParams: ColorRecipeParams?,
    ): ResolvedColorCorrectionStack {
        val baselineLayer = baselineLutId?.let { lutId ->
            LutRenderLayer(
                lutConfig = lutManager.loadLut(lutId),
                colorRecipeParams = baselineRecipeParams ?: ColorRecipeParams.DEFAULT,
            )
        }
        val creativeLayer = creativeLutId?.let { lutId ->
            LutRenderLayer(
                lutConfig = lutManager.loadLut(lutId),
                colorRecipeParams = creativeRecipeParams ?: ColorRecipeParams.DEFAULT,
            )
        }
        return ResolvedColorCorrectionStack(
            target = target,
            baselineLutId = baselineLutId,
            creativeLutId = creativeLutId,
            baselineLayer = baselineLayer,
            creativeLayer = creativeLayer,
        )
    }
}
