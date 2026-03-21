package com.hinnka.mycamera.raw

import android.graphics.Bitmap

data class RawRenderPlan(
    val sceneNormalizationGain: Float,
    val sdrCurveLut: FloatArray? = null,
)

data class RawHdrRenderResult(
    val sdrBitmap: Bitmap,
    val hdrReferenceBitmap: Bitmap? = null,
)
