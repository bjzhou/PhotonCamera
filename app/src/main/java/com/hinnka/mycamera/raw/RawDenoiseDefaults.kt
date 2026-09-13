package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.DenoiseStrength

/**
 * Capture-time multipliers on the HDR+ denoise tuning. Unity keeps the native model
 * amplitude, including the AGC Pixel 5 default; its P5 gain-curve parameter 2.5 is not
 * a global S/O or luma/chroma strength multiplier.
 */
object RawDenoiseDefaults {
    const val RAW_MAX_LUMA_STRENGTH = 1.0f
    const val RAW_MAX_CHROMA_STRENGTH = 1.0f

    fun normalize(value: Float): Float = DenoiseStrength.clamp(value)
}
