package com.hinnka.mycamera.model

/**
 * 调色盘交互状态。
 *
 * x: 0..1，连续对应饱和度 -10..+10。
 * y: 0..1，连续对应影调 +10..-10（BasicTone High Key 到 Low Key）。
 */
data class ColorPaletteState(
    val x: Float = 0.5f,
    val y: Float = 0.5f,
) {
    val saturationValue: Float
        get() = positionToValue(x)

    val toneValue: Float
        get() = -positionToValue(y)

    fun normalized(): ColorPaletteState {
        return copy(
            x = x.coerceIn(0f, 1f),
            y = y.coerceIn(0f, 1f)
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
        const val AXIS_MIN = -10f
        const val AXIS_MAX = 10f

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
