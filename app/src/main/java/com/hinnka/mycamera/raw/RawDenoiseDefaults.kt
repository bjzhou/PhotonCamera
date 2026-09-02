package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.DenoiseStrength

/** Capture-time defaults for HDR+ RAW denoise. */
object RawDenoiseDefaults {
    const val RAW_MAX_LUMA_STRENGTH = 1.0f
    const val RAW_MAX_CHROMA_STRENGTH = 1.0f

    fun normalize(value: Float): Float = DenoiseStrength.clamp(value)
}
