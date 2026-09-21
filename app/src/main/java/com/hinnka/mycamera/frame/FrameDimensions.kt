package com.hinnka.mycamera.frame

/** Scale design pixels uniformly while the photograph keeps its actual size. */
internal data class FrameDimensions(
    val photoWidth: Int,
    val photoHeight: Int,
    val designSize: FrameDesignSize = FrameDesignSize(),
    val elementSpacingPx: Float = 24.0f,
) {
    val scale = photoWidth / designSize.width

    val elementSpacing: Float get() = toPixels(elementSpacingPx)

    fun toPixels(designPixels: Float): Float = designPixels * scale
}
