package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Gainmap

enum class SourceKind {
    RAW,
    HLG_CAPTURE,
    SDR_BITMAP,
}

data class HdrBuffer(
    val bitmap: Bitmap,
    val description: String? = null,
)

data class GainmapSourceSet(
    val sdrBase: Bitmap,
    val hdrReference: HdrBuffer? = null,
    val sourceKind: SourceKind,
    val confidence: Float = 1.0f,
    val displayHdrSdrRatio: Float = 0f,
)

data class GainmapResult(
    val gainmap: Gainmap,
    val sourceKind: SourceKind,
    val confidence: Float = 1.0f,
)
