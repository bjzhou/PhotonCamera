package com.hinnka.mycamera.lut.creator

import androidx.annotation.Keep

/**
 * LUT recipe representing a color grading style as a set of Control Points for RBF interpolation.
 */
@Keep
data class LutRecipe(
    val controlPoints: List<ControlPoint> = emptyList()
)

/**
 * A Control Point maps a source (un-stylized) color to a target (stylized) color.
 * Coordinates are in normalized linear RGB or sRGB [0.0, 1.0].
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
