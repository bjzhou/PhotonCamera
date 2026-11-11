package com.hinnka.mycamera.ml

/**
 * Normalized relative disparity produced by the monocular depth model.
 *
 * Values remain floating point until the bokeh renderer.
 */
data class RelativeDepthMap(
    val width: Int,
    val height: Int,
    val values: FloatArray,
) {
    init {
        require(width > 0 && height > 0) { "Depth dimensions must be positive" }
        require(values.size.toLong() == width.toLong() * height.toLong()) {
            "Depth data size does not match dimensions"
        }
    }
}
