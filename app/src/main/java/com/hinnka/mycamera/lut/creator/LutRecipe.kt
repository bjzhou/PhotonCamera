package com.hinnka.mycamera.lut.creator

import androidx.annotation.Keep

/**
 * LUT recipe representing a color grading style as a set of weighted source/target samples.
 */
@Keep
data class LutRecipe(
    val controlPoints: List<ControlPoint> = emptyList(),
    val isMonochrome: Boolean = false
)

/**
 * A Control Point maps a source (un-stylized) color to a target (stylized) color.
 * Coordinates are normalized display-referred sRGB values in [0.0, 1.0].
 */
@Keep
data class ControlPoint(
    val sourceR: Float,
    val sourceG: Float,
    val sourceB: Float,
    val targetR: Float,
    val targetG: Float,
    val targetB: Float,
    val matchConfidence: Float = 1f
)
