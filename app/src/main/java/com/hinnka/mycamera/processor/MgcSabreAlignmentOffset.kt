package com.hinnka.mycamera.processor

import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.sign

/** SabreProcessor's per-frame alignment-grid offsets (V25 0x38C9310 / 0x38CAEBC). */
internal data class MgcSabreAlignmentOffset(val x: Int, val y: Int) {
    companion object {
        val ZERO = MgcSabreAlignmentOffset(0, 0)

        private val xSequence = floatArrayOf(
            -0.45f, -0.05f, 0.35f, -0.15f, 0.25f,
            -0.25f, 0.15f, -0.35f, 0.05f, 0.45f,
        )
        private val ySequence = floatArrayOf(
            -0.4811529517f, -0.00901698973f, 0.4631189704f, 0.372949034f, -0.1549150348f,
            -0.2450849712f, 0.227050975f, 0.1368810385f, -0.3909830153f, 0.08115295321f,
        )

        /** Base-frame SNR table constructed at 0x38C8290 and evaluated at 0x38C8DAC. */
        fun tileSupport(baseFrameSnr: Float): Int {
            require(baseFrameSnr.isFinite())
            return when {
                baseFrameSnr < 0.5f -> 32
                baseFrameSnr < 2.7f -> 64
                else -> 16
            }
        }

        fun forFrame(frameIndex: Int, tileStride: Int): MgcSabreAlignmentOffset {
            require(frameIndex >= 0 && tileStride > 0)
            if (frameIndex == 0) return ZERO
            val index = (frameIndex - 1) % xSequence.size
            // Original FRINTA: nearest integer with halfway cases away from zero.
            fun scaled(value: Float): Int {
                val product = value * tileStride
                return (sign(product) * floor(abs(product) + 0.5f)).toInt()
            }
            return MgcSabreAlignmentOffset(scaled(xSequence[index]), scaled(ySequence[index]))
        }
    }
}
