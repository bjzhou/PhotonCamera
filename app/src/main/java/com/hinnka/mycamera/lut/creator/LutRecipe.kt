package com.hinnka.mycamera.lut.creator

import androidx.annotation.Keep


/**
 * LUT recipe parsed from AI analysis (or mocked logic), 
 * representing style features extracted from an image.
 */
@Keep
data class LutRecipe(
    val colorFeatures: ColorFeatures = ColorFeatures()
)

@Keep
data class ColorFeatures(
    val tone: Tone = Tone(),

    val balance: Balance = Balance(),

    val splitToning: SplitToning = SplitToning(),

    val hslShifts: HslShifts = HslShifts(),

    val curves: Curves = Curves()
)


/**
 * 1. Global Tone Mapping
 * Maps from -1.0 to 1.0 (normalized float)
 */
@Keep
data class Tone(
    val exposure: Float = 0f,
    val contrast: Float = 0f,
    val highlights: Float = 0f,
    val shadows: Float = 0f,
    val whitePoint: Float = 0f,
    val blackPoint: Float = 0f
)


/**
 * 2. Global Color Balance
 */
@Keep
data class Balance(
    val temperature: Float = 0f, // -1.0 to 1.0 (blue to yellow)
    val tint: Float = 0f                // -1.0 to 1.0 (green to magenta)
)


/**
 * 3. Split Toning (Based on OKLCH Hue and Saturation)
 */
@Keep
data class SplitToning(
    val shadows: ToningTarget = ToningTarget(),
    val midtones: ToningTarget = ToningTarget(),
    val highlights: ToningTarget = ToningTarget()
)

@Keep
data class ToningTarget(
    val hue: Float = 0f,               // 0-360
    val saturation: Float = 0f  // 0.0 - 1.0
)


/**
 * 4. HSL Targeted Color Shifts
 * Shifts applied in OKLCH or HSL space.
 */
@Keep
data class HslShifts(
    val red: Shift = Shift(),
    val orange: Shift = Shift(),
    val yellow: Shift = Shift(),
    val green: Shift = Shift(),
    val cyan: Shift = Shift(),
    val blue: Shift = Shift(),
    val purple: Shift = Shift(),
    val magenta: Shift = Shift()
)

@Keep
data class Shift(
    val hShift: Float = 0f, // Degrees
    val sShift: Float = 0f,
    val lShift: Float = 0f
)


/**
 * 5. Spline Curve Control Points
 * [x, y] representing input and output mappings.
 */
@Keep
data class Curves(
    val luma: List<List<Float>> = emptyList(),
    val red: List<List<Float>> = emptyList(),
    val green: List<List<Float>> = emptyList(),
    val blue: List<List<Float>> = emptyList()
)

