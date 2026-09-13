package com.hinnka.mycamera.model

import com.google.gson.JsonObject

/** Converts legacy palette coordinates only while reading persisted recipes. */
internal object LegacyColorRecipeMigration {
    fun migrate(params: ColorRecipeParams, obj: JsonObject): ColorRecipeParams = migrate(
        params = params,
        paletteX = obj.finiteFloat("paletteX", 0.5f),
        paletteY = obj.finiteFloat("paletteY", 0.5f),
        paletteDensity = obj.finiteFloat("paletteDensity", 1f),
        hasTonality = obj.has("tonality"),
    )

    fun migrate(
        params: ColorRecipeParams,
        paletteX: Float = 0.5f,
        paletteY: Float = 0.5f,
        paletteDensity: Float = 1f,
        hasTonality: Boolean = false,
    ): ColorRecipeParams {
        val saturation = params.saturation.finiteOr(1f)
        if (hasTonality) {
            return params.copy(
                saturation = saturation.coerceIn(0f, 2f),
                tonality = params.tonality.finiteOr(0f).coerceIn(-1f, 1f),
            )
        }
        val density = paletteDensity.finiteOr(1f).coerceIn(0f, 1f)
        return params.copy(
            saturation = (saturation + (2f * paletteX.finiteOr(0.5f).coerceIn(0f, 1f) - 1f) * 0.6f * density)
                .coerceIn(0f, 2f),
            tonality = (1f - 2f * paletteY.finiteOr(0.5f).coerceIn(0f, 1f)) * density,
        )
    }

    private fun Float.finiteOr(default: Float): Float = if (isFinite()) this else default

    private fun JsonObject.finiteFloat(name: String, default: Float): Float =
        runCatching { get(name)?.asFloat }.getOrNull()?.finiteOr(default) ?: default
}
