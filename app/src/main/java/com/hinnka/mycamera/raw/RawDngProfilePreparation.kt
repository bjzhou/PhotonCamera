package com.hinnka.mycamera.raw

import android.graphics.Rect
import java.nio.ByteBuffer

/** Metadata generated before a RAW buffer is written as DNG. */
data class RawDngProfilePreparationOptions(
    val profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Photon,
    val statsBounds: Rect? = null,
    val viewfinderExposureMatcher: RawDngViewfinderExposureMatcher? = null,
)

fun interface RawDngViewfinderExposureMatcher {
    suspend fun match(input: RawDngViewfinderMatchInput): Float?
}

data class RawDngViewfinderMatchInput(
    val rawData: ByteBuffer,
    val width: Int,
    val height: Int,
    val rowStride: Int,
    val samplesPerPixel: Int,
    val metadata: RawMetadata,
)

/** BaselineExposure and optional PGTM prepared before the DNG writer starts. */
internal data class RawDngProfilePreparation(
    val baselineExposureEv: Float,
    val profileGainTableMap: DngProfileGainTableMap?,
)
