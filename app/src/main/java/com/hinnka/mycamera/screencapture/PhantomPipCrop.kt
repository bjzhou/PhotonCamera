package com.hinnka.mycamera.screencapture

data class PhantomPipCrop(
    val left: Float = 0f,
    val top: Float = 0f,
    val right: Float = 1f,
    val bottom: Float = 1f
) {
    fun normalized(): PhantomPipCrop {
        val safeLeft = left.coerceIn(0f, 0.95f)
        val safeTop = top.coerceIn(0f, 0.95f)
        val safeRight = right.coerceIn(safeLeft + 0.05f, 1f)
        val safeBottom = bottom.coerceIn(safeTop + 0.05f, 1f)
        return PhantomPipCrop(safeLeft, safeTop, safeRight, safeBottom)
    }

    fun isFullFrame(): Boolean = normalized() == PhantomPipCrop()

    fun flipVertically(): PhantomPipCrop = PhantomPipCrop(
        left = left,
        top = 1f - bottom,
        right = right,
        bottom = 1f - top
    ).normalized()
}
