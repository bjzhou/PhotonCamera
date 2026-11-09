package com.hinnka.mycamera.lut

import com.hinnka.mycamera.processor.DenoiseStrength

object ChromaDenoiseDefaults {
    const val RAW_CAPTURE_DEFAULT_STRENGTH = 0.0f

    fun forRawCapture(requested: Float): Float = DenoiseStrength.clamp(
        maxOf(requested, RAW_CAPTURE_DEFAULT_STRENGTH)
    )
}
