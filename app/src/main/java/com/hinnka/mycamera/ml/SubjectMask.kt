package com.hinnka.mycamera.ml

import kotlin.math.floor

/** The original-image UV rectangle represented by a mask texture. */
data class SubjectMaskRegion(
    val left: Float,
    val top: Float,
    val right: Float,
    val bottom: Float,
) {
    init {
        require(left.isFinite() && top.isFinite() && right.isFinite() && bottom.isFinite())
        require(left >= 0f && top >= 0f && right <= 1f && bottom <= 1f)
        require(right > left && bottom > top)
    }

    val width: Float get() = right - left
    val height: Float get() = bottom - top

    companion object {
        val FULL = SubjectMaskRegion(0f, 0f, 1f, 1f)
    }
}

/** Salient-subject coverage at its native inference resolution and image location. */
data class SubjectMask(
    val width: Int,
    val height: Int,
    val values: FloatArray,
    val region: SubjectMaskRegion = SubjectMaskRegion.FULL,
) {
    init {
        require(width > 0 && height > 0) { "Subject mask dimensions must be positive" }
        require(values.size.toLong() == width.toLong() * height.toLong()) {
            "Subject mask data size does not match dimensions"
        }
        require(values.all { it.isFinite() && it in 0f..1f }) {
            "Subject mask coverage must be finite and within [0, 1]"
        }
    }

    /**
     * Samples original-image UVs without resampling the crop onto a coarse full-frame grid.
     * Internal crop borders have zero coverage; original image borders clamp to the edge.
     */
    fun sample(x: Float, y: Float): Float {
        require(x.isFinite() && y.isFinite()) { "Subject mask coordinates must be finite" }
        val pixelX = (x.coerceIn(0f, 1f) - region.left) / region.width * width - 0.5f
        val pixelY = (y.coerceIn(0f, 1f) - region.top) / region.height * height - 0.5f
        val left = floor(pixelX).toInt()
        val top = floor(pixelY).toInt()
        val fractionX = pixelX - left
        val fractionY = pixelY - top
        val topValue = texel(left, top) * (1f - fractionX) + texel(left + 1, top) * fractionX
        val bottomValue = texel(left, top + 1) * (1f - fractionX) + texel(left + 1, top + 1) * fractionX
        return topValue * (1f - fractionY) + bottomValue * fractionY
    }

    private fun texel(x: Int, y: Int): Float {
        if ((x < 0 && region.left > 0f) || (x >= width && region.right < 1f) ||
            (y < 0 && region.top > 0f) || (y >= height && region.bottom < 1f)) return 0f
        return values[y.coerceIn(0, height - 1) * width + x.coerceIn(0, width - 1)]
    }

    /** A crop is incomplete when predicted foreground reaches an artificial image edge. */
    fun touchesInteriorCropBoundary(): Boolean {
        val bandX = minOf(4, width)
        val bandY = minOf(4, height)
        for (y in 0 until height) {
            for (x in 0 until width) {
                val atCropEdge = (region.left > 0f && x < bandX) ||
                    (region.right < 1f && x >= width - bandX) ||
                    (region.top > 0f && y < bandY) ||
                    (region.bottom < 1f && y >= height - bandY)
                if (atCropEdge && values[y * width + x] >= 0.5f) return true
            }
        }
        return false
    }

    fun isSubjectAt(x: Float, y: Float): Boolean = sample(x, y) >= 0.5f
}
