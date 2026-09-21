package com.hinnka.mycamera.frame

/** Photo dimensions of the design canvas, expressed in pixels. */
data class FrameDesignSize(
    val width: Float = 4096f,
    val height: Float = 3072f,
) {
    val aspectRatio: Float get() = width / height

    val isValid: Boolean
        get() = width.isFinite() && width > 0f && height.isFinite() && height > 0f &&
            aspectRatio.isFinite() && aspectRatio > 0f
}
