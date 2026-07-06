package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.graphics.Rect

data class RawRenderPlan(
    val sceneNormalizationGain: Float,
    val sdrCurveLut: FloatArray? = null,
)

data class RawHdrRenderResult(
    val sdrBitmap: Bitmap,
    val hdrReferenceBitmap: Bitmap? = null,
    val rawInputWidth: Int = 0,
    val rawInputHeight: Int = 0,
    val outputSourceBounds: Rect? = null,
    val outputRotation: Int = 0,
    val effectiveDefaultCrop: Rect? = null,
)
