package com.hinnka.mycamera.raw

import com.hinnka.mycamera.processor.GpuLinearRgbSource
import java.nio.ByteBuffer

/** Metadata generated before a RAW buffer is written as DNG. */
data class RawDngProfilePreparationOptions(
    val captureProfilePreparer: RawDngCaptureProfilePreparer? = null,
)

fun interface RawDngCaptureProfilePreparer {
    suspend fun prepare(input: RawDngCaptureProfileInput): RawDngCaptureProfileResult?
}

data class RawDngCaptureProfileInput(
    val rawData: ByteBuffer?,
    val width: Int,
    val height: Int,
    val rowStride: Int,
    val samplesPerPixel: Int,
    val metadata: RawMetadata,
    val meteringRenderPlan: DcpRenderPlan,
    val gpuLinearRgbSource: GpuLinearRgbSource? = null,
)

data class RawDngCaptureProfileResult(
    val exposureOffsetEv: Float?,
)

/** Keeps the DNG color solution while enforcing the fixed Adobe/default metering pipeline. */
internal fun DcpRenderPlan.toAdobeDefaultMeteringPlan(): DcpRenderPlan {
    return copy(
        defaultBlackRender = DcpDefaultBlackRender.None,
        hueSatMap = null,
        lookTable = null,
        toneCurveLut = null,
    )
}

/** BaselineExposure prepared before the DNG writer starts. */
data class RawDngProfilePreparation(
    val baselineExposureEv: Float,
)
