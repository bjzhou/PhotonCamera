package com.hinnka.mycamera.frame

import android.graphics.Path
import android.graphics.RectF

/** Shared capsule geometry for the SDR material, watermark content and HDR gain mask. */
internal object FrameGlassOverlay {
    private const val MARGIN_DP = 48f

    fun bounds(width: Float, height: Float, frameHeight: Float, unitScale: Float): RectF {
        val margin = minOf(MARGIN_DP * unitScale, minOf(width, height) / 4f)
        val bottom = height - margin
        val capsuleHeight = frameHeight.coerceIn(0f, height - 2f * margin)
        return RectF(margin, bottom - capsuleHeight, width - margin, bottom)
    }

    fun radius(bounds: RectF): Float = minOf(bounds.width(), bounds.height()) / 2f

    fun outline(bounds: RectF): Path = Path().apply {
        val radius = radius(bounds)
        addRoundRect(bounds, radius, radius, Path.Direction.CW)
    }

    fun contentBounds(bounds: RectF, padding: Float): RectF = RectF(bounds).apply {
        // Keep all text lines inside the straight portion, away from the rounded end caps.
        inset(maxOf(padding, radius(bounds)), padding)
    }
}
