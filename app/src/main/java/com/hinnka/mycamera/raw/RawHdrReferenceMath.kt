package com.hinnka.mycamera.raw

import kotlin.math.max
import kotlin.math.min

object RawHdrReferenceMath {
    const val HIGHLIGHT_START = 0.50f
    const val WHITE_POINT_SCENE_LUMA = 2.4f

    fun expandedSceneLuma(
        luma: Float,
        highlightStart: Float = HIGHLIGHT_START,
        whitePointSceneLuma: Float = WHITE_POINT_SCENE_LUMA,
    ): Float {
        if (!luma.isFinite()) return 0f
        val safeLuma = luma.coerceAtLeast(0f)
        val whitePoint = whitePointSceneLuma.coerceAtLeast(1f)
        val highlight = smoothstep(highlightStart, 1f, safeLuma)
        val lift = 1f + (whitePoint - 1f) * highlight
        return max(safeLuma, min(safeLuma * lift, whitePoint))
    }

    private fun smoothstep(edge0: Float, edge1: Float, value: Float): Float {
        if (edge0 == edge1) return if (value >= edge1) 1f else 0f
        val t = ((value - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }
}
