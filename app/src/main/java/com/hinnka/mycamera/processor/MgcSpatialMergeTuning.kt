package com.hinnka.mycamera.processor

import kotlin.math.pow
import kotlin.math.sqrt

/** Exact MGC 9.7.047 V25 SpatialMerge parameter generation. */
internal object MgcSpatialMergeTuning {
    private const val MAXIMUM_MERGE_WEIGHT_CAP = 50f
    private const val DEFAULT_FRAME_WEIGHT_EXPONENT = 1f
    private const val DEFAULT_SELECTED_FRAME_MULTIPLIER = 1f

    /** MGC's pre-merge planning estimate: base-frame SNR times sqrt(frame count). */
    fun mergedSnr(referenceSnr: Float, frameCount: Int): Float {
        val snr = referenceSnr.takeIf { it.isFinite() }?.coerceAtLeast(0f) ?: 0f
        return snr * sqrt(frameCount.coerceAtLeast(0).toFloat())
    }

    /**
     * Evaluates the representative SNR of Spatial's propagated output NoiseModel.
     *
     * This mirrors MGC V25 NoiseModel::EstimateSnr for the normalized signal path: use the
     * green channel (index 1), whose read/shot coefficients already include the actual AOT
     * alignment/rejection weights and output-exposure transport.
     */
    fun outputNoiseModelSnr(
        signal: Float,
        greenReadVariance: Float,
        greenShotNoiseFactor: Float,
    ): Float? {
        if (!signal.isFinite() || signal < 0f ||
            !greenReadVariance.isFinite() || greenReadVariance < 0f ||
            !greenShotNoiseFactor.isFinite() || greenShotNoiseFactor < 0f
        ) {
            return null
        }
        val variance = greenReadVariance + greenShotNoiseFactor * signal
        if (!variance.isFinite() || variance <= 0f) return null
        return (signal / sqrt(variance)).takeIf { it.isFinite() && it >= 0f }
    }

    /**
     * Recovered from SpatialMergeParams::BuildForSnr at libgcastartup.so+0x386b3cc.
     * The curve input is the merged-stack SNR, not the base-frame SNR.
     */
    fun baseSpatialScale(
        referenceSnr: Float,
        frameCount: Int,
        outputMode: MgcSpatialOutputMode,
    ): Float {
        val snr = mergedSnr(referenceSnr, frameCount)
        return when (outputMode) {
            MgcSpatialOutputMode.BAYER -> interpolate(
                snr,
                14.5f to 0.6f,
                29.5f to 0.42f,
                44f to 0.35f,
            )
            MgcSpatialOutputMode.RGB -> interpolate(
                snr,
                2.3f to 0.32f,
                40.1f to 0.365f,
                51.1f to 0.4f,
                71f to 0.28f,
            )
        }
    }

    /**
     * Spatial MaximumMergeWeight at libgcastartup.so+0x386bbec.
     *
     * [exposureScale] is baseTET / alternateTET. MGC first transports the alternate noise
     * model into the base exposure domain (read variance *= exposureScale^2), then compares
     * the shadow/read variances. V25 derives a smaller exponent only when per-frame
     * motion_pix_per_ms metadata is present. Missing metadata is represented as -1, clamped to
     * zero scene motion, and therefore produces exponent 1. Photon has no equivalent motion
     * metering metadata, so the default below follows that exact missing-metadata path.
     */
    fun maximumMergeWeight(
        baseReadVariance: Float,
        alternateReadVariance: Float,
        exposureScale: Float,
        frameWeightExponent: Float = DEFAULT_FRAME_WEIGHT_EXPONENT,
    ): Float {
        require(baseReadVariance.isFinite() && baseReadVariance >= 0f)
        require(alternateReadVariance.isFinite() && alternateReadVariance >= 0f)
        require(exposureScale.isFinite() && exposureScale > 0f)
        require(frameWeightExponent.isFinite() && frameWeightExponent >= 0f)
        val scaledAlternateRead = alternateReadVariance * exposureScale * exposureScale
        check(scaledAlternateRead > 0f) {
            "MGC Spatial requires positive alternate shadow/read variance"
        }
        return (baseReadVariance / scaledAlternateRead)
            .pow(frameWeightExponent)
            .coerceAtMost(MAXIMUM_MERGE_WEIGHT_CAP)
    }

    /**
     * Special-exposure scale consumed by AdjustRejectionWeightsHalide.
     *
     * SpatialMergeUtils at libgcastartup.so+0x38b1274 compares the reference and
     * exposure-transported alternate shadow variances, raises the ratio to the frame-weight
     * exponent, and clamps it to the same global cap as [maximumMergeWeight]. SpatialMerge then
     * supplies that exact value both to AdjustRejectionWeights and to MergeRgbRaw16F16. MGC skips
     * the adjustment stage for ordinary same-exposure frames, so callers must not apply this
     * scale to every temporal slice.
     */
    fun rejectionWeightScale(
        baseReadVariance: Float,
        alternateReadVariance: Float,
        exposureScale: Float,
        frameWeightExponent: Float = DEFAULT_FRAME_WEIGHT_EXPONENT,
    ): Float {
        return maximumMergeWeight(
            baseReadVariance = baseReadVariance,
            alternateReadVariance = alternateReadVariance,
            exposureScale = exposureScale,
            frameWeightExponent = frameWeightExponent,
        )
    }

    /**
     * Spatial ExpectedMergeWeight at libgcastartup.so+0x386ba74.
     *
     * MGC first transports the alternate shot/read model into the base exposure domain, then
     * compares both models at the reference signal. SpatialMerge reports this estimate in its
     * diagnostics, but V25 passes the shadow-domain [maximumMergeWeight] to MergeBayer and
     * MergeRgbRaw16F16 instead.
     */
    fun expectedMergeWeight(
        referenceSignal: Float,
        baseShotNoiseFactor: Float,
        baseReadVariance: Float,
        alternateShotNoiseFactor: Float,
        alternateReadVariance: Float,
        exposureScale: Float,
        frameWeightExponent: Float = DEFAULT_FRAME_WEIGHT_EXPONENT,
    ): Float {
        require(referenceSignal.isFinite() && referenceSignal >= 0f)
        require(baseShotNoiseFactor.isFinite() && baseShotNoiseFactor >= 0f)
        require(baseReadVariance.isFinite() && baseReadVariance >= 0f)
        require(alternateShotNoiseFactor.isFinite() && alternateShotNoiseFactor >= 0f)
        require(alternateReadVariance.isFinite() && alternateReadVariance >= 0f)
        require(exposureScale.isFinite() && exposureScale > 0f)
        require(frameWeightExponent.isFinite() && frameWeightExponent >= 0f)

        val baseVariance =
            baseShotNoiseFactor * referenceSignal + baseReadVariance
        val scaledAlternateVariance =
            alternateShotNoiseFactor * exposureScale * referenceSignal +
                alternateReadVariance * exposureScale * exposureScale
        check(scaledAlternateVariance > 0f) {
            "MGC Spatial requires positive alternate variance at the reference signal"
        }
        return (baseVariance / scaledAlternateVariance)
            .pow(frameWeightExponent)
            .coerceAtMost(MAXIMUM_MERGE_WEIGHT_CAP)
    }

    /** Static MGC map initialized from libgcastartup.so rodata at 0x6b6e40. */
    fun frameWeightKernelMultiplier(mergeWeight: Float): Float = interpolate(
        mergeWeight.takeIf { it.isFinite() } ?: 0f,
        10f to 1f,
        30f to 1.414000034332275f,
    )

    fun kernelSigma(
        baseSpatialScale: Float,
        mergeWeight: Float,
        selectedFrameMultiplier: Float = DEFAULT_SELECTED_FRAME_MULTIPLIER,
    ): Float {
        require(baseSpatialScale.isFinite() && baseSpatialScale > 0f)
        require(selectedFrameMultiplier.isFinite() && selectedFrameMultiplier > 0f)
        return 1f / (
            baseSpatialScale *
                frameWeightKernelMultiplier(mergeWeight) *
                selectedFrameMultiplier
            )
    }

    private fun interpolate(x: Float, vararg points: Pair<Float, Float>): Float {
        require(points.isNotEmpty())
        if (x <= points.first().first) return points.first().second
        for (index in 1 until points.size) {
            val upper = points[index]
            if (x <= upper.first) {
                val lower = points[index - 1]
                val amount = (x - lower.first) / (upper.first - lower.first)
                return lower.second + amount * (upper.second - lower.second)
            }
        }
        return points.last().second
    }
}
