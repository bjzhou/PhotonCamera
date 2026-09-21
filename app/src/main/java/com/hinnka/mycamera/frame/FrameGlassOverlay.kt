package com.hinnka.mycamera.frame

import android.graphics.Path
import android.graphics.RectF

/** Shared capsule geometry for the SDR material, watermark content and HDR gain mask. */
internal object FrameGlassOverlay {
    fun bounds(width: Float, height: Float, frameHeight: Float, dimensions: FrameDimensions): RectF {
        val marginX = minOf(dimensions.toPixels(144.0f), width / 4f)
        val marginY = minOf(dimensions.toPixels(144.0f), height / 4f)
        val bottom = height - marginY
        val capsuleHeight = frameHeight.coerceIn(0f, height - 2f * marginY)
        return RectF(marginX, bottom - capsuleHeight, width - marginX, bottom)
    }

    fun radius(bounds: RectF): Float = minOf(bounds.width(), bounds.height()) / 2f

    fun outline(bounds: RectF): Path = Path().apply {
        val radius = radius(bounds)
        addRoundRect(bounds, radius, radius, Path.Direction.CW)
    }

    fun contentBounds(bounds: RectF, padding: Float, verticalPadding: Float): RectF = RectF(bounds).apply {
        // Keep all text lines inside the straight portion, away from the rounded end caps.
        inset(maxOf(padding, radius(bounds)), verticalPadding)
    }
}
