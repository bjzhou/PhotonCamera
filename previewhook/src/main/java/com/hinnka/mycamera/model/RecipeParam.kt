package com.hinnka.mycamera.model

enum class RecipeParam(
    val minValue: Float,
    val maxValue: Float,
    val defaultValue: Float,
) {
    EXPOSURE(-2.0f, 2.0f, 0f),
    CONTRAST(0.5f, 1.5f, 1f),
    SATURATION(0.0f, 2.0f, 1f),
    FADE(0.0f, 1.0f, 0f),
    COLOR(-1.0f, 1.0f, 0f),
    HIGHLIGHTS(-1.0f, 1.0f, 0f),
    SHADOWS(-1.0f, 1.0f, 0f);

    fun clamp(value: Float): Float = value.coerceIn(minValue, maxValue)
}
