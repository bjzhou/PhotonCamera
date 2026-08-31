package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.max

internal data class RawLegacyExposurePreviewFrame(
    val width: Int,
    val height: Int,
    val argbPixels: IntArray,
)

internal data class RawLegacyAutoExposureRequest(
    val width: Int,
    val height: Int,
    val solve: ((Float) -> RawLegacyExposurePreviewFrame?) -> Float?,
)

internal data class RawHdrNetExposureEvaluation(
    val matchedSpatialSampleCount: Int,
    val spatialSampleCount: Int,
    val matchRate: Float,
    val medianExposureErrorEv: Float,
    val meanAbsoluteExposureErrorEv: Float,
    val robustExposureLoss: Float,
    val score: Float,
)

internal data class RawHdrNetExposureCandidate<T>(
    val adjustmentEv: Float,
    val payload: T,
    val evaluation: RawHdrNetExposureEvaluation,
)

/**
 * Classic capture-side auto exposure derived from the adaptive spatial grid matcher in
 * PhotonCamera 1.27.1. The RAW renderer supplies default-curve preview candidates while native
 * code owns endpoint reliability weighting, robust scoring, adaptive search and final selection.
 */
internal object RawLegacyAutoExposureMatcher {
    private const val TAG = "RawLegacyAutoExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private data class ViewfinderReference(
        val frame: RawLegacyExposurePreviewFrame,
    )

    fun createRequest(
        capturePreviewThumbnail: Bitmap?,
    ): RawLegacyAutoExposureRequest? {
        val reference = capturePreviewThumbnail?.let {
            buildReference(it)
        }
        if (capturePreviewThumbnail != null && reference == null) {
            PLog.w(TAG, "Classic auto exposure skipped: capture preview is unavailable")
        }
        return reference?.let {
            RawLegacyAutoExposureRequest(
                width = it.frame.width,
                height = it.frame.height,
                solve = { renderSample -> solve(it, renderSample) },
            )
        }
    }

    private fun buildReference(bitmap: Bitmap): ViewfinderReference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val size = longEdgeSize(bitmap.width, bitmap.height, PREVIEW_LONG_EDGE)
            val pixels = sampleBitmap(bitmap, size.width, size.height)
            ViewfinderReference(
                frame = RawLegacyExposurePreviewFrame(
                    width = size.width,
                    height = size.height,
                    argbPixels = pixels,
                ),
            )
        } catch (error: Throwable) {
            PLog.e(TAG, "Failed to analyze capture preview", error)
            null
        }
    }

    /**
     * Searches the one-dimensional Photon exposure bracket without rendering a PGTM candidate.
     * Each EV candidate applies one common gain to short and long, preserving the ML AE HDR ratio.
     * [evaluateCandidate] returns the spatial effective exposure of the actual image in stops:
     * `log2(ACR3^-1(H) / sourceLuma)`. Its robust center is matched directly to the legacy
     * BaselineExposure EV, so local HDR shaping does not turn a synthetic 18% gray into a second
     * global exposure target.
     */
    fun <T> solveHdrNetExposure(
        targetExposureEv: Float,
        maxAdjustmentEv: Float,
        evaluateCandidate: (Float) -> Pair<T, FloatArray>?,
    ): RawHdrNetExposureCandidate<T>? {
        if (!targetExposureEv.isFinite()) return null
        val limit = maxAdjustmentEv.takeIf { it.isFinite() && it > MIN_SEARCH_STEP_EV }
            ?.coerceAtMost(MAX_SEARCH_RANGE_EV)
            ?: 0f
        val samples = ArrayList<RawHdrNetExposureCandidate<T>>(MAX_HDRNET_SAMPLE_COUNT)
        var nextEv = 0f
        var searchMinimumEv = -limit
        var searchMaximumEv = limit
        while (samples.size < MAX_HDRNET_SAMPLE_COUNT) {
            val candidate = evaluateCandidate(nextEv) ?: break
            val evaluation = evaluateHdrNetExposure(targetExposureEv, candidate.second) ?: break
            val sample = RawHdrNetExposureCandidate(
                adjustmentEv = nextEv,
                payload = candidate.first,
                evaluation = evaluation,
            )
            samples += sample
            PLog.d(
                TAG,
                "HDRNet exposure sample: adjustmentEv=$nextEv " +
                    "matchedSpatialSamples=${evaluation.matchedSpatialSampleCount}/" +
                    "${evaluation.spatialSampleCount} " +
                    "targetExposureEv=$targetExposureEv " +
                    "medianExposureErrorEv=${evaluation.medianExposureErrorEv} " +
                    "meanAbsoluteExposureErrorEv=${evaluation.meanAbsoluteExposureErrorEv} " +
                    "robustExposureLoss=${evaluation.robustExposureLoss} " +
                    "matchRate=${evaluation.matchRate} " +
                    "score=${evaluation.score}",
            )
            if (limit == 0f ||
                abs(evaluation.medianExposureErrorEv) <= CONVERGED_RESIDUAL_EV
            ) {
                break
            }
            if (samples.size == 1) {
                // Lock the search direction from the first response. The controlled variable is
                // one common exposure EV, so this restriction never changes the short/long ratio.
                if (evaluation.medianExposureErrorEv > 0f) {
                    searchMaximumEv = 0f
                } else {
                    searchMinimumEv = 0f
                }
            }
            val proposed = nextHdrNetAdjustment(
                samples = samples,
                minimumEv = searchMinimumEv,
                maximumEv = searchMaximumEv,
            ) ?: break
            if (samples.any { abs(it.adjustmentEv - proposed) < MIN_SEARCH_STEP_EV }) break
            nextEv = proposed
        }
        val best = samples.minWithOrNull(
            compareBy<RawHdrNetExposureCandidate<T>> { it.evaluation.robustExposureLoss }
                .thenBy { it.evaluation.meanAbsoluteExposureErrorEv }
                .thenByDescending { it.evaluation.matchRate }
                .thenBy { abs(it.adjustmentEv) },
        ) ?: return null
        PLog.i(
            TAG,
            "HDRNet exposure result: adjustmentEv=${best.adjustmentEv} " +
                "matchedSpatialSamples=${best.evaluation.matchedSpatialSampleCount}/" +
                "${best.evaluation.spatialSampleCount} " +
                "targetExposureEv=$targetExposureEv " +
                "medianExposureErrorEv=${best.evaluation.medianExposureErrorEv} " +
                "meanAbsoluteExposureErrorEv=${best.evaluation.meanAbsoluteExposureErrorEv} " +
                "robustExposureLoss=${best.evaluation.robustExposureLoss} " +
                "matchRate=${best.evaluation.matchRate} " +
                "score=${best.evaluation.score} sampleCount=${samples.size}",
        )
        return best
    }

    private fun evaluateHdrNetExposure(
        targetExposureEv: Float,
        candidateExposureEvs: FloatArray,
    ): RawHdrNetExposureEvaluation? {
        if (candidateExposureEvs.isEmpty() || candidateExposureEvs.any { !it.isFinite() }) {
            return null
        }
        val residualHistogram = FloatArray(RESIDUAL_HISTOGRAM_BINS)
        var matchedSpatialSampleCount = 0
        var absoluteResidualSum = 0.0
        var robustLossSum = 0.0
        for (candidateExposureEv in candidateExposureEvs) {
            val residual = (candidateExposureEv - targetExposureEv)
                .coerceIn(-MAX_RESIDUAL_EV, MAX_RESIDUAL_EV)
            val absoluteResidual = abs(residual)
            val matched = absoluteResidual <= MATCH_RESIDUAL_EV
            if (matched) matchedSpatialSampleCount++
            absoluteResidualSum += absoluteResidual
            robustLossSum += huberLoss(residual)
            val histogramPosition = ((residual + MAX_RESIDUAL_EV) /
                (2f * MAX_RESIDUAL_EV) * (RESIDUAL_HISTOGRAM_BINS - 1))
                .toInt()
                .coerceIn(0, RESIDUAL_HISTOGRAM_BINS - 1)
            residualHistogram[histogramPosition] += 1f
        }
        val medianTarget = candidateExposureEvs.size * 0.5
        var cumulative = 0.0
        var medianBin = 0
        for (bin in residualHistogram.indices) {
            cumulative += residualHistogram[bin]
            if (cumulative >= medianTarget) {
                medianBin = bin
                break
            }
        }
        val medianResidual = -MAX_RESIDUAL_EV +
            (medianBin + 0.5f) * (2f * MAX_RESIDUAL_EV / RESIDUAL_HISTOGRAM_BINS)
        val meanAbsoluteResidual = (absoluteResidualSum / candidateExposureEvs.size).toFloat()
        val robustLoss = (robustLossSum / candidateExposureEvs.size).toFloat()
        val matchRate = matchedSpatialSampleCount.toFloat() / candidateExposureEvs.size
        return RawHdrNetExposureEvaluation(
            matchedSpatialSampleCount = matchedSpatialSampleCount,
            spatialSampleCount = candidateExposureEvs.size,
            matchRate = matchRate,
            medianExposureErrorEv = medianResidual,
            meanAbsoluteExposureErrorEv = meanAbsoluteResidual,
            robustExposureLoss = robustLoss,
            score = 1f / (1f + robustLoss),
        )
    }

    private fun <T> nextHdrNetAdjustment(
        samples: List<RawHdrNetExposureCandidate<T>>,
        minimumEv: Float,
        maximumEv: Float,
    ): Float? {
        val sorted = samples.sortedBy { it.adjustmentEv }
        var narrowestBracket: Pair<RawHdrNetExposureCandidate<T>, RawHdrNetExposureCandidate<T>>? =
            null
        for (index in 0 until sorted.lastIndex) {
            val lower = sorted[index]
            val upper = sorted[index + 1]
            if (lower.evaluation.medianExposureErrorEv *
                upper.evaluation.medianExposureErrorEv > 0f
            ) {
                continue
            }
            val currentWidth = upper.adjustmentEv - lower.adjustmentEv
            val selectedWidth = narrowestBracket?.let { it.second.adjustmentEv - it.first.adjustmentEv }
            if (selectedWidth == null || currentWidth < selectedWidth) {
                narrowestBracket = lower to upper
            }
        }
        narrowestBracket?.let { (lower, upper) ->
            val lowerResidual = lower.evaluation.medianExposureErrorEv
            val upperResidual = upper.evaluation.medianExposureErrorEv
            val width = upper.adjustmentEv - lower.adjustmentEv
            val denominator = upperResidual - lowerResidual
            val secant = if (abs(denominator) > 1e-4f) {
                lower.adjustmentEv - lowerResidual * width / denominator
            } else {
                (lower.adjustmentEv + upper.adjustmentEv) * 0.5f
            }
            val margin = minOf(width * 0.15f, 0.05f)
            return secant.coerceIn(
                lower.adjustmentEv + margin,
                upper.adjustmentEv - margin,
            ).coerceIn(minimumEv, maximumEv)
        }
        val anchor = samples.minWithOrNull(
            compareBy<RawHdrNetExposureCandidate<T>> {
                abs(it.evaluation.medianExposureErrorEv)
            }.thenBy { it.evaluation.robustExposureLoss },
        ) ?: return null
        val residual = anchor.evaluation.medianExposureErrorEv
        if (!residual.isFinite() || abs(residual) <= CONVERGED_RESIDUAL_EV) return null
        val stepMagnitude = abs(residual).coerceIn(MIN_DIRECTIONAL_STEP_EV, MAX_DIRECTIONAL_STEP_EV)
        return (anchor.adjustmentEv - kotlin.math.sign(residual) * stepMagnitude)
            .coerceIn(minimumEv, maximumEv)
    }

    private fun huberLoss(residualEv: Float): Float {
        val absolute = abs(residualEv)
        return if (absolute <= HUBER_DELTA_EV) {
            0.5f * absolute * absolute / HUBER_DELTA_EV
        } else {
            absolute - 0.5f * HUBER_DELTA_EV
        }
    }

    private fun solve(
        reference: ViewfinderReference,
        renderSample: (Float) -> RawLegacyExposurePreviewFrame?,
    ): Float? {
        val solver = RawLegacyAutoExposureNativeBridge.Solver.create(reference.frame)
            ?: run {
                PLog.w(
                    TAG,
                    "Classic auto exposure skipped: insufficient reliable non-endpoint cells",
                )
                return null
            }
        return solver.use {
            while (true) {
                val exposureEv = solver.nextExposureEv() ?: break
                val frame = renderSample(exposureEv) ?: return@use null
                if (!solver.submitCandidate(exposureEv, frame)) return@use null
                solver.lastSample()?.let { sample ->
                    PLog.d(
                        TAG,
                        "Classic auto exposure sample: exposureEv=${sample.exposureEv} " +
                            "matchedCells=${sample.matchedCellCount}/${sample.validCellCount} " +
                            "matchRate=${sample.matchRate} " +
                            "meanAbsoluteLog2Ratio=${sample.meanAbsoluteLog2Ratio} " +
                            "medianLog2Ratio=${sample.medianLog2Ratio} " +
                            "robustLog2Loss=${sample.robustLog2Loss} " +
                            "referenceWeightSum=${sample.referenceWeightSum}",
                    )
                }
            }
            val result = solver.result() ?: return@use null
            PLog.i(
                TAG,
                "Classic auto exposure result: exposureEv=${result.best.exposureEv} " +
                    "matchedCells=${result.best.matchedCellCount}/${result.best.validCellCount} " +
                    "matchRate=${result.best.matchRate} " +
                    "meanAbsoluteLog2Ratio=${result.best.meanAbsoluteLog2Ratio} " +
                    "medianLog2Ratio=${result.best.medianLog2Ratio} " +
                    "robustLog2Loss=${result.best.robustLog2Loss} " +
                    "referenceWeightSum=${result.best.referenceWeightSum} " +
                    "sampleCount=${result.evaluatedSampleCount} " +
                    "excludedShadowCells=${result.excludedShadowCellCount} " +
                    "excludedHighlightCells=${result.excludedHighlightCellCount} " +
                    "shadowWeightZeroLinear=${result.shadowWeightZeroLinear} " +
                    "highlightWeightZeroLinear=${result.highlightWeightZeroLinear} " +
                    "huberDeltaEv=${result.huberDeltaEv}",
            )
            result.best.exposureEv
        }
    }

    private data class Size(val width: Int, val height: Int)

    private const val MATCH_RESIDUAL_EV = 0.13750352f
    private const val HUBER_DELTA_EV = 0.25f
    private const val MAX_RESIDUAL_EV = 4f
    private const val RESIDUAL_HISTOGRAM_BINS = 512
    private const val CONVERGED_RESIDUAL_EV = 0.03f
    private const val MIN_SEARCH_STEP_EV = 0.02f
    private const val MIN_DIRECTIONAL_STEP_EV = 0.125f
    private const val MAX_DIRECTIONAL_STEP_EV = 1f
    private const val MAX_SEARCH_RANGE_EV = 4f
    private const val MAX_HDRNET_SAMPLE_COUNT = 8

    private fun longEdgeSize(sourceWidth: Int, sourceHeight: Int, maxLongEdge: Int): Size {
        val longEdge = minOf(max(sourceWidth, sourceHeight), maxLongEdge.coerceAtLeast(1))
        return if (sourceWidth >= sourceHeight) {
            Size(
                width = longEdge,
                height = (longEdge.toFloat() * sourceHeight / sourceWidth).toInt()
                    .coerceAtLeast(1),
            )
        } else {
            Size(
                width = (longEdge.toFloat() * sourceWidth / sourceHeight).toInt()
                    .coerceAtLeast(1),
                height = longEdge,
            )
        }
    }

    private fun sampleBitmap(bitmap: Bitmap, width: Int, height: Int): IntArray {
        val pixels = IntArray(width * height)
        val row = IntArray(bitmap.width)
        for (y in 0 until height) {
            val sourceY = ((y + 0.5f) * bitmap.height / height).toInt()
                .coerceIn(0, bitmap.height - 1)
            bitmap.getPixels(row, 0, bitmap.width, 0, sourceY, bitmap.width, 1)
            for (x in 0 until width) {
                val sourceX = ((x + 0.5f) * bitmap.width / width).toInt()
                    .coerceIn(0, bitmap.width - 1)
                pixels[y * width + x] = row[sourceX]
            }
        }
        return pixels
    }
}
