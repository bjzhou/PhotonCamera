package com.hinnka.mycamera.processor

import android.graphics.Rect
import com.hinnka.mycamera.camera.MultiFrameConfig
import com.hinnka.mycamera.utils.PLog

/**
 * Entry point for the non-AI MGC Spatial RAW pipeline recovered from
 * MGC 9.6.080 V24's libgcastartup.
 *
 * MGC selects a non-ultrashort base frame before SpatialMergeProcessor::Run. Photon preserves that
 * contract with MGC's RAW-content sharpness objective: reference candidacy and merge admission are
 * separate, so choosing a base never removes another normal frame from the stack. Valid long
 * bracketed frames enter regular SpatialMerge, while the single lowest-TET ultrashort frame enters
 * Bento's clipped-highlight path.
 */
internal class GlesMgcRawFusion(
    private val sourceWidth: Int,
    private val sourceHeight: Int,
    private val sourceBounds: Rect,
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
    private val coreImagingTuning: PhotonCoreImagingTuning = PhotonCoreImagingTuning.DEFAULT,
) {
    private val width = sourceBounds.width()
    private val height = sourceBounds.height()
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
        val normalIndicesBeforeSelection = frames.indices.filter { index ->
            frames[index].role == RawBurstFrameRole.NORMAL
        }
        if (normalIndicesBeforeSelection.isEmpty()) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} merge has no NORMAL reference candidate")
            frames.forEach { it.image.close() }
            return null
        }
        val baseFrameSelection = GlesMgcRawBaseFrameSelector(
            width = width,
            height = height,
            sourceBounds = sourceBounds,
            cfaPattern = cfaPattern,
            canonicalBlackLevel = blackLevel,
            whiteLevel = whiteLevel,
            noiseProfileSelection = noiseProfileSelection,
            useCurrentGlContext = useCurrentGlContext,
        ).select(
            frames = frames,
        )
        if (baseFrameSelection == null) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} RAW-content base-frame selection failed")
            frames.forEach { it.image.close() }
            return null
        }
        val selectedBaseIndex = baseFrameSelection.referenceIndex
        val referenceFirstFrames = if (selectedBaseIndex == 0) {
            frames
        } else {
            buildList(frames.size) {
                add(frames[selectedBaseIndex])
                frames.indices.forEach { index ->
                    if (index != selectedBaseIndex) add(frames[index])
                }
            }
        }
        PLog.i(
            TAG,
            "MGC Spatial ${outputMode.name} baseFrame=" +
                "${frames[selectedBaseIndex].frameNumber} source=" +
                if (normalIndicesBeforeSelection.size == 1) {
                    "single_normal"
                } else {
                    "gles_raw_sharpness"
                },
        )
        val fastMomentsRawStats = baseFrameSelection.fastMomentsRawStats
        if (mergeMethod == MgcMergeMethod.SABRE) {
            return GlesMgcRawSabreProcessor(
                width = width,
                height = height,
                sourceBounds = sourceBounds,
                cfaPattern = cfaPattern,
                blackLevel = blackLevel,
                whiteLevel = whiteLevel,
                whiteBalanceGains = whiteBalanceGains,
                noiseProfileSelection = noiseProfileSelection,
                lensShading = lensShading,
                lensShadingWidth = lensShadingWidth,
                lensShadingHeight = lensShadingHeight,
                outputScale = outputScale,
                useCurrentGlContext = useCurrentGlContext,
                exportGpuLinearRgbSource = exportGpuLinearRgbSource,
                gpuLinearRgbStorage = gpuLinearRgbStorage,
                coreImagingTuning = coreImagingTuning,
            ).processFrames(referenceFirstFrames)?.copy(
                fastMomentsRawStats = fastMomentsRawStats,
            )
        }

        val baseIndex = referenceFirstFrames.indexOfFirst { it.role == RawBurstFrameRole.NORMAL }
        if (baseIndex < 0) {
            PLog.e(TAG, "MGC Spatial ${outputMode.name} merge has no non-ultrashort NORMAL base frame")
            referenceFirstFrames.forEach { it.image.close() }
            return null
        }
        val baseExposure = strictExposureProduct(referenceFirstFrames[baseIndex])
        val normalIndices = referenceFirstFrames.indices.filter { index ->
            referenceFirstFrames[index].role == RawBurstFrameRole.NORMAL
        }
        val longIndices = referenceFirstFrames.indices.filter { index ->
            val frame = referenceFirstFrames[index]
            frame.role == RawBurstFrameRole.SHADOW_LONG &&
                baseExposure != null &&
                strictExposureProduct(frame)?.let { it > baseExposure } == true
        }
        val taggedShortIndices = referenceFirstFrames.indices.filter { index ->
            referenceFirstFrames[index].role == RawBurstFrameRole.HIGHLIGHT_SHORT
        }
        val shortIndex = taggedShortIndices.singleOrNull()?.takeIf { index ->
            val shortExposure = strictExposureProduct(referenceFirstFrames[index])
                ?: return@takeIf false
            val comparisonIndices = normalIndices + longIndices
            comparisonIndices.all { otherIndex ->
                strictExposureProduct(referenceFirstFrames[otherIndex])
                    ?.let { shortExposure < it } == true
            }
        }

        val acceptedIndices = buildList {
            add(baseIndex)
            normalIndices.filterTo(this) { it != baseIndex }
            addAll(longIndices)
            shortIndex?.let(::add)
        }
        val acceptedIndexSet = acceptedIndices.toSet()
        val excludedIndices = referenceFirstFrames.indices.filterNot(acceptedIndexSet::contains)
        excludedIndices.forEach { referenceFirstFrames[it].image.close() }

        if (taggedShortIndices.isNotEmpty() && shortIndex == null) {
            PLog.w(
                TAG,
                "Bento disabled: expected exactly one HIGHLIGHT_SHORT frame whose TET is lower " +
                    "than every accepted merge frame; tagged=${taggedShortIndices.size}",
            )
        }
        val invalidLongCount = referenceFirstFrames.indices.count { index ->
            referenceFirstFrames[index].role == RawBurstFrameRole.SHADOW_LONG && index !in longIndices
        }
        if (invalidLongCount > 0) {
            PLog.w(
                TAG,
                "Excluded $invalidLongCount SHADOW_LONG frame(s): MGC bracketed normalization " +
                    "requires referenceTET/longTET < 1.0",
            )
        }
        val scheduledFrames = acceptedIndices.map(referenceFirstFrames::get)
        val shortRatio = shortIndex?.let { index ->
            val shortExposure = checkNotNull(strictExposureProduct(referenceFirstFrames[index]))
            checkNotNull(baseExposure) / shortExposure
        }
        PLog.i(
            TAG,
            "MGC Spatial ${outputMode.name} schedule " +
                "baseFrame=${referenceFirstFrames[baseIndex].frameNumber} " +
                "normal=${normalIndices.size} long=${longIndices.size} " +
                "ultrashort=${if (shortIndex != null) 1 else 0} " +
                "shortRatio=${shortRatio ?: "none"} excluded=${excludedIndices.size} " +
                "outputScale=$outputScale AI alignment=disabled",
        )
        return GlesMgcRawSpatialStacker(
            width = width,
            height = height,
            sourceBounds = sourceBounds,
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
            coreImagingTuning = coreImagingTuning,
        ).processFrames(scheduledFrames)?.copy(
            fastMomentsRawStats = fastMomentsRawStats,
        )
    }

    private fun strictExposureProduct(frame: RawStackFrame): Double? =
        frame.exposureProduct.takeIf { it.isFinite() && it > 0.0 }

    private companion object {
        const val TAG = "GlesMgcRawFusion"
    }
}
