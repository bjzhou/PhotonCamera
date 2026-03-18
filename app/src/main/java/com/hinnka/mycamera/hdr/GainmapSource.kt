package com.hinnka.mycamera.hdr

import android.graphics.Bitmap

enum class SourceKind {
    RAW,
    HLG_CAPTURE,
    SDR_BITMAP,
}

data class HdrBuffer(
    val bitmap: Bitmap,
    val description: String? = null,
)

data class GainmapPayload(
    val platformGainmap: Any? = null,
    val description: String? = null,
)

data class GainmapSourceSet(
    val sdrBase: Bitmap,
    val hdrReference: HdrBuffer? = null,
    val sourceKind: SourceKind,
    val confidence: Float = 1.0f,
)

data class GainmapResult(
    val payload: GainmapPayload,
    val sourceKind: SourceKind,
    val confidence: Float = 1.0f,
)
