package com.hinnka.mycamera.camera

import kotlin.math.roundToInt

object MultiFrameConfig {
    /**
     * Controls the post-Spatial MGC luma/chroma pass as one closed stage.
     * Spatial fusion and Bayer/RGB materialization remain active when disabled.
     */
    const val ENABLE_MGC_SPATIAL_DEFAULT_DENOISE = true

    const val MIN_DENOISE_FRAME_COUNT = 3
    const val DEFAULT_DENOISE_FRAME_COUNT = 5
    const val MIN_HDR_PLUS_FRAME_COUNT = 1
    const val MIN_HDR_PLUS_BRACKET_FRAME_COUNT = 2
    const val DEFAULT_HDR_PLUS_FRAME_COUNT = 3
    const val MAX_FRAME_COUNT = 20
    const val DEFAULT_HDR_PLUS_BRACKET_EXPOSURE = false
    const val MIN_OUTPUT_SCALE = 1f
    const val MAX_OUTPUT_SCALE = 2f
    const val DEFAULT_SUPER_RESOLUTION_SCALE = 1f
    const val SHORT_FRAME_COUNT = 1
    const val SHORT_FRAME_EXPOSURE_DIVISOR = 3.0
    const val LONG_FRAME_COUNT_DIVISOR = 4
    const val MIN_LONG_FRAME_COUNT = 1
    const val LONG_FRAME_EXPOSURE_EV = 2.5
    const val LONG_FRAME_MAX_EXPOSURE_TIME_NS = 10_000_000L
    const val LONG_FRAME_FALLBACK_MAX_ANALOG_SENSITIVITY = 800

    fun normalizeDenoiseFrameCount(frameCount: Int): Int {
        return frameCount.coerceIn(MIN_DENOISE_FRAME_COUNT, MAX_FRAME_COUNT)
    }

    fun normalizeHdrPlusFrameCount(
        frameCount: Int,
        bracketExposureEnabled: Boolean = false,
    ): Int {
        val minimumFrameCount = if (bracketExposureEnabled) {
            MIN_HDR_PLUS_BRACKET_FRAME_COUNT
        } else {
            MIN_HDR_PLUS_FRAME_COUNT
        }
        return frameCount.coerceIn(minimumFrameCount, MAX_FRAME_COUNT)
    }

    fun normalizeOutputScale(
        outputScale: Float,
        fallback: Float = MIN_OUTPUT_SCALE,
    ): Float {
        val normalizedFallback = if (fallback.isFinite()) {
            fallback.coerceIn(MIN_OUTPUT_SCALE, MAX_OUTPUT_SCALE)
        } else {
            MIN_OUTPUT_SCALE
        }
        return if (outputScale.isFinite()) {
            outputScale.coerceIn(MIN_OUTPUT_SCALE, MAX_OUTPUT_SCALE)
        } else {
            normalizedFallback
        }
    }

    fun scaledRawOutputDimension(size: Int, outputScale: Float): Int {
        val normalizedScale = normalizeOutputScale(outputScale)
        val scaled = (size.coerceAtLeast(1).toFloat() * normalizedScale)
            .roundToInt()
            .coerceAtLeast(1)
        return if (normalizedScale > MIN_OUTPUT_SCALE && scaled > 1 && scaled % 2 != 0) {
            scaled - 1
        } else {
            scaled
        }
    }

    fun hdrPlusNormalFrameCount(totalFrameCount: Int): Int {
        val normalizedFrameCount = normalizeHdrPlusFrameCount(totalFrameCount)
        return when (normalizedFrameCount) {
            1, 2 -> 1
            else -> normalizedFrameCount -
                hdrPlusShortFrameCount(normalizedFrameCount) -
                hdrPlusLongFrameCount(normalizedFrameCount)
        }
    }

    fun hdrPlusShortFrameCount(totalFrameCount: Int): Int {
        return if (normalizeHdrPlusFrameCount(totalFrameCount) >= 3) SHORT_FRAME_COUNT else 0
    }

    fun hdrPlusLongFrameCount(totalFrameCount: Int): Int {
        return when (val normalizedFrameCount = normalizeHdrPlusFrameCount(totalFrameCount)) {
            1 -> 0
            2 -> 1
            else -> (normalizedFrameCount / LONG_FRAME_COUNT_DIVISOR)
                .coerceAtLeast(MIN_LONG_FRAME_COUNT)
        }
    }

    fun hdrPlusCaptureFrameCount(totalFrameCount: Int): Int {
        val normalizedFrameCount = normalizeHdrPlusFrameCount(totalFrameCount)
        return hdrPlusNormalFrameCount(normalizedFrameCount) +
            hdrPlusShortFrameCount(normalizedFrameCount) +
            hdrPlusLongFrameCount(normalizedFrameCount)
    }
}
