package com.hinnka.mycamera.processor

import java.util.Locale

data class RawStackMetricDistribution(
    val sampleCount: Long,
    val mean: Float,
    val p10: Float,
    val p50: Float,
    val p90: Float,
    val max: Float,
) {
    val isAvailable: Boolean
        get() = sampleCount > 0L

    companion object {
        val Empty = RawStackMetricDistribution(
            sampleCount = 0L,
            mean = Float.NaN,
            p10 = Float.NaN,
            p50 = Float.NaN,
            p90 = Float.NaN,
            max = Float.NaN,
        )
    }
}

data class RawStackDiagnostics(
    val outputScale: Float,
    val frameCount: Int,
    val alignedFrameCount: Int,
    val width: Int,
    val height: Int,
    val sampleStep: Int,
    val registration: RawStackRegistrationSummary? = null,
    val registrationQuality: RawStackRegistrationQualitySummary? = null,
    val superResolutionOutputMode: String? = null,
    val superResolutionFallbackReason: String? = null,
    val superResolutionDetailFrameCount: Int = 0,
    val superResolutionDetailWeightSum: Float = Float.NaN,
    val superResolutionPhaseBinCount: Int = 0,
    val superResolutionPhaseBinTotal: Int = 0,
    val superResolutionPhaseBinSamples: List<Int> = emptyList(),
    val flowMagnitudePx: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val alignmentResidual: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val noiseNormalizedResidual: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val flowLocalRangePx: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val robustness: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val tileMask: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val accumulatorWeight: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val superResolutionSupport: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val postfilterResidual: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val postfilterSmooth: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val postfilterEffectiveSmooth: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val postfilterWienerGain: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val postfilterLscBoost: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val postfilterLowWeightBoost: RawStackMetricDistribution = RawStackMetricDistribution.Empty,
    val rejectedTileRatio: Float = Float.NaN,
    val flowOutlierRatio: Float = Float.NaN,
    val highConfidenceTileRatio: Float = Float.NaN,
    val srAlignmentReadyRatio: Float = Float.NaN,
    val srDetailReadyRatio: Float = Float.NaN,
    val lensShadingMeanGain: Float = Float.NaN,
    val lensShadingEdgeMeanGain: Float = Float.NaN,
    val elapsedMs: Long = 0L,
) {
    fun compactSummary(): String {
        val registrationSummary = registration?.compactSummary()?.let { "$it " }.orEmpty()
        val registrationQualitySummary = registrationQuality?.compactSummary()?.let { "$it " }.orEmpty()
        val superResolutionSummary = superResolutionOutputMode?.let { mode ->
            "srOut=$mode srReason=${superResolutionFallbackReason ?: "ok"} " +
                "srFrames=$superResolutionDetailFrameCount srWeight=${superResolutionDetailWeightSum.fmt()} " +
                "srPhase=$superResolutionPhaseBinCount/$superResolutionPhaseBinTotal " +
                "srPhaseDist=${superResolutionPhaseBinSamples.joinToString(prefix = "[", postfix = "]")} "
        }.orEmpty()
        return "Radiance diag scale=${outputScale.fmt()} frames=$frameCount aligned=$alignedFrameCount " +
            "size=${width}x$height step=$sampleStep " +
            registrationSummary +
            registrationQualitySummary +
            superResolutionSummary +
            "flowMean=${flowMagnitudePx.mean.fmt()} flowP90=${flowMagnitudePx.p90.fmt()} " +
            "flowMax=${flowMagnitudePx.max.fmt()} flowOut=${flowOutlierRatio.percent()} " +
            "resP90=${alignmentResidual.p90.fmt()} resN90=${noiseNormalizedResidual.p90.fmt()} " +
            "flowRangeP90=${flowLocalRangePx.p90.fmt()} " +
            "robP50=${robustness.p50.fmt()} robP10=${robustness.p10.fmt()} " +
            "tileReject=${rejectedTileRatio.percent()} tileP50=${tileMask.p50.fmt()} " +
            "hiConf=${highConfidenceTileRatio.percent()} srAlign=${srAlignmentReadyRatio.percent()} " +
            "srDetail=${srDetailReadyRatio.percent()} " +
            "weightMean=${accumulatorWeight.mean.fmt()} weightP10=${accumulatorWeight.p10.fmt()} " +
            "srSupportP10=${superResolutionSupport.p10.fmt()} " +
            "srSupportP50=${superResolutionSupport.p50.fmt()} " +
            "srSupportP90=${superResolutionSupport.p90.fmt()} " +
            "postResP50=${postfilterResidual.p50.fmt()} postResP90=${postfilterResidual.p90.fmt()} " +
            "postSmoothMean=${postfilterSmooth.mean.fmt()} postSmoothP90=${postfilterSmooth.p90.fmt()} " +
            "postEffMean=${postfilterEffectiveSmooth.mean.fmt()} postEffP90=${postfilterEffectiveSmooth.p90.fmt()} " +
            "postWienerP50=${postfilterWienerGain.p50.fmt()} " +
            "postLsc=${postfilterLscBoost.mean.fmt()} postLowW=${postfilterLowWeightBoost.mean.fmt()} " +
            "lscMean=${lensShadingMeanGain.fmt()} lscEdge=${lensShadingEdgeMeanGain.fmt()} " +
            "elapsed=${elapsedMs}ms"
    }
}

private fun Float.fmt(): String {
    return if (isFinite()) {
        String.format(Locale.US, "%.3f", this)
    } else {
        "n/a"
    }
}

private fun Float.percent(): String {
    return if (isFinite()) {
        String.format(Locale.US, "%.1f%%", this * 100f)
    } else {
        "n/a"
    }
}
