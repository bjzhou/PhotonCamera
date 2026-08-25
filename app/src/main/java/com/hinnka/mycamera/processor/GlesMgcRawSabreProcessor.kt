package com.hinnka.mycamera.processor

import com.hinnka.mycamera.utils.PLog

/**
 * Native MGC SabreProcessor entry point.
 *
 * Sabre has its own frame admission and full merge/resolve pipeline. It does not use Spatial's
 * Shasta bracket composition, Bento ultrashort path, Spatial Bayer normalization, or Spatial RGB
 * reconstruction.
 */
internal class GlesMgcRawSabreProcessor(
    private val width: Int,
    private val height: Int,
    private val cfaPattern: Int,
    private val blackLevel: FloatArray,
    private val whiteLevel: Int,
    private val whiteBalanceGains: FloatArray,
    private val noiseProfileSelection: RawNoiseProfileSelection,
    private val lensShading: FloatArray?,
    private val lensShadingWidth: Int,
    private val lensShadingHeight: Int,
    private val outputScale: Float,
    private val useCurrentGlContext: Boolean,
    private val exportGpuLinearRgbSource: Boolean,
    private val gpuLinearRgbStorage: GpuLinearRgbStorage,
    private val coreImagingTuning: PhotonCoreImagingTuning,
) {
    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        if (frames.isEmpty()) return null
        if (cfaPattern !in 0..3) {
            PLog.e(TAG, "MGC Sabre supports only the four 2x2 Bayer layouts; cfa=$cfaPattern")
            frames.forEach { it.image.close() }
            return null
        }

        val baseIndex = frames.indexOfFirst { it.role == RawBurstFrameRole.NORMAL }
        if (baseIndex < 0) {
            PLog.e(TAG, "MGC Sabre has no NORMAL base frame")
            frames.forEach { it.image.close() }
            return null
        }
        val admittedIndices = buildList {
            add(baseIndex)
            frames.indices.filterTo(this) { index ->
                index != baseIndex && frames[index].role == RawBurstFrameRole.NORMAL
            }
        }
        val admittedSet = admittedIndices.toSet()
        val excluded = frames.indices.filterNot(admittedSet::contains)
        excluded.forEach { frames[it].image.close() }
        val admitted = admittedIndices.map(frames::get)
        PLog.i(
            TAG,
            "MGC SabreProcessor schedule base=${frames[baseIndex].frameNumber} " +
                "regular=${admitted.size} excludedBracketed=${excluded.size} " +
                "spatial=false bento=false output=linear-rgb",
        )
        return GlesMgcRawSpatialStacker(
            width = width,
            height = height,
            cfaPattern = cfaPattern,
            blackLevel = blackLevel,
            whiteLevel = whiteLevel,
            whiteBalanceGains = whiteBalanceGains,
            noiseProfileSelection = noiseProfileSelection,
            lensShading = lensShading,
            lensShadingWidth = lensShadingWidth,
            lensShadingHeight = lensShadingHeight,
            outputMode = MgcSpatialOutputMode.RGB,
            mergeMethod = MgcMergeMethod.SABRE,
            outputScale = outputScale,
            useCurrentGlContext = useCurrentGlContext,
            exportGpuLinearRgbSource = exportGpuLinearRgbSource,
            gpuLinearRgbStorage = gpuLinearRgbStorage,
            processorPipeline = MgcRawProcessorPipeline.SABRE,
            coreImagingTuning = coreImagingTuning,
        ).processFrames(admitted)
    }

    private companion object {
        const val TAG = "GlesMgcRawSabre"
    }
}
