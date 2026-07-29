package com.hinnka.mycamera.model

/**
 * 调色盘交互状态。
 *
 * x: 0..1，连续对应饱和度 -100..+100。
 * y: 0..1，连续对应影调 +100..-100（BasicTone High Key 到 Low Key）。
 * density: 0..1，调色盘效果施加浓度。
 */
data class ColorPaletteState(
    val x: Float = 0.5f,
    val y: Float = 0.5f,
    val density: Float = 1f,
) {
    val saturationValue: Float
        get() = positionToValue(x)

    val toneValue: Float
        get() = -positionToValue(y)

    fun normalized(): ColorPaletteState {
        return copy(
            x = x.coerceIn(0f, 1f),
            y = y.coerceIn(0f, 1f),
            density = density.coerceIn(0f, 1f)
        )
    }

    fun withValues(
        saturation: Float = saturationValue,
        tone: Float = toneValue
    ): ColorPaletteState {
        return copy(
            x = valueToPosition(saturation),
            y = valueToPosition(-tone)
        )
    }

    companion object {
        const val AXIS_MIN = -100f
        const val AXIS_MAX = 100f

        val DEFAULT = ColorPaletteState()

        fun positionToValue(position: Float): Float {
            return AXIS_MIN + position.coerceIn(0f, 1f) * (AXIS_MAX - AXIS_MIN)
        }

        fun valueToPosition(value: Float): Float {
            val clamped = value.coerceIn(AXIS_MIN, AXIS_MAX)
            return (clamped - AXIS_MIN) / (AXIS_MAX - AXIS_MIN)
        }
    }
}
