package com.hinnka.mycamera.model

/**
 * 调色盘交互状态。
 *
 * x: 0..1，左侧更灰、更淡；右侧更纯、更鲜。
 * y: 0..1，上侧更高调、更柔和；下侧更低调、更扎实。
 * density: 0..1，调色盘效果施加浓度。
 */
data class ColorPaletteState(
    val x: Float = 0.5f,
    val y: Float = 0.5f,
    val density: Float = 1f,
) {
    fun normalized(): ColorPaletteState {
        return copy(
            x = x.coerceIn(0f, 1f),
            y = y.coerceIn(0f, 1f),
            density = density.coerceIn(0f, 1f)
        )
    }

    companion object {
        val DEFAULT = ColorPaletteState()
    }
}
