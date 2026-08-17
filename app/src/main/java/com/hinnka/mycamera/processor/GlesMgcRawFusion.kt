package com.hinnka.mycamera.processor

import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.utils.PLog

/**
 * Entry point for the non-AI MGC Spatial RAW pipeline recovered from
 * MGC 9.6.080 V24's libgcastartup.
 *
 * MGC selects a non-ultrashort base frame before SpatialMergeProcessor::Run. Photon preserves that
 * contract using the capture roles: normal frames and valid long bracketed frames enter regular
 * SpatialMerge, while the single lowest-TET ultrashort frame enters Bento's clipped-highlight path.
 * Output selection only changes the final RAW-domain reconstruction; frame admission, alignment,
 * rejection and Bento remain shared MGC stages.
 */
internal class GlesMgcRawFusion(
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
    private val outputMode: MgcSpatialOutputMode,
    private val mergeMethod: MgcMergeMethod,
    outputScale: Float,
    private val useCurrentGlContext: Boolean,
    private val exportGpuLinearRgbSource: Boolean,
    private val gpuLinearRgbStorage: GpuLinearRgbStorage,
) {
    private val outputScale = MultiFrameConfig.normalizeOutputScale(outputScale)

    fun processFrames(frames: List<RawStackFrame>): RawStackResult? {
        if (frames.isEmpty()) return null
        if (cfaPattern !in 0..3) {
            PLog.e(
                TAG,
                "MGC Spatial ${outputMode.name} merge only supports the four 2x2 Bayer layouts; " +
                    "cfaPattern=$cfaPattern",
            )
            frames.forEach { it.image.close() }
            return null
        }
        if (mergeMethod == MgcMergeMethod.SABRE) {
            return GlesMgcRawSabreProcessor(
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
                useCurrentGlContext = useCurrentGlContext,
                exportGpuLinearRgbSource = exportGpuLinearRgbSource,
                gpuLinearRgbStorage = gpuLinearRgbStorage,
            ).processFrames(frames)
        }

        val baseIndex = frames.indexOfFirst { it.role == RawBurstFrameRole.NORMAL }
        if (baseIndex < 0) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} merge has no non-ultrashort NORMAL base frame")
            frames.forEach { it.image.close() }
            return null
        }
        val baseExposure = strictExposureProduct(frames[baseIndex])
        val normalIndices = frames.indices.filter { index ->
            frames[index].role == RawBurstFrameRole.NORMAL
        }
        val longIndices = frames.indices.filter { index ->
            val frame = frames[index]
            frame.role == RawBurstFrameRole.SHADOW_LONG &&
                baseExposure != null &&
                strictExposureProduct(frame)?.let { it > baseExposure } == true
        }
        val taggedShortIndices = frames.indices.filter { index ->
            frames[index].role == RawBurstFrameRole.HIGHLIGHT_SHORT
        }
        val shortIndex = taggedShortIndices.singleOrNull()?.takeIf { index ->
            val shortExposure = strictExposureProduct(frames[index]) ?: return@takeIf false
            val comparisonIndices = normalIndices + longIndices
            comparisonIndices.all { otherIndex ->
                strictExposureProduct(frames[otherIndex])?.let { shortExposure < it } == true
            }
        }

        val acceptedIndices = buildList {
            add(baseIndex)
            normalIndices.filterTo(this) { it != baseIndex }
            addAll(longIndices)
            shortIndex?.let(::add)
        }
        val acceptedIndexSet = acceptedIndices.toSet()
        val excludedIndices = frames.indices.filterNot(acceptedIndexSet::contains)
        excludedIndices.forEach { frames[it].image.close() }

        if (taggedShortIndices.isNotEmpty() && shortIndex == null) {
            PLog.w(
                TAG,
                "Bento disabled: expected exactly one HIGHLIGHT_SHORT frame whose TET is lower " +
                    "than every accepted merge frame; tagged=${taggedShortIndices.size}",
            )
        }
        val invalidLongCount = frames.indices.count { index ->
            frames[index].role == RawBurstFrameRole.SHADOW_LONG && index !in longIndices
        }
        if (invalidLongCount > 0) {
            PLog.w(
                TAG,
                "Excluded $invalidLongCount SHADOW_LONG frame(s): MGC bracketed normalization " +
                    "requires referenceTET/longTET < 1.0",
            )
        }
        val scheduledFrames = acceptedIndices.map(frames::get)
        val shortRatio = shortIndex?.let { index ->
            val shortExposure = checkNotNull(strictExposureProduct(frames[index]))
            checkNotNull(baseExposure) / shortExposure
        }
        PLog.i(
            TAG,
            "MGC Spatial ${outputMode.name} schedule baseFrame=${frames[baseIndex].frameNumber} " +
                "normal=${normalIndices.size} long=${longIndices.size} " +
                "ultrashort=${if (shortIndex != null) 1 else 0} " +
                "shortRatio=${shortRatio ?: "none"} excluded=${excludedIndices.size} " +
                "outputScale=$outputScale AI alignment=disabled",
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
            outputMode = outputMode,
            mergeMethod = mergeMethod,
            outputScale = outputScale,
            useCurrentGlContext = useCurrentGlContext,
            exportGpuLinearRgbSource = exportGpuLinearRgbSource,
            gpuLinearRgbStorage = gpuLinearRgbStorage,
        ).processFrames(scheduledFrames)
    }

    private fun strictExposureProduct(frame: RawStackFrame): Double? =
        frame.exposureProduct.takeIf { it.isFinite() && it > 0.0 }

    private companion object {
        const val TAG = "GlesMgcRawFusion"
    }
}
