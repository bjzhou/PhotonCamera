package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.pow

internal data class RawLegacyExposurePreviewFrame(
    val width: Int,
    val height: Int,
    val argbPixels: IntArray,
)

internal data class RawLegacyAutoExposureRequest(
    val width: Int,
    val height: Int,
    /** Complete capture-time viewfinder image retained for Photon HDR spatial matching. */
    val referenceFrame: RawLegacyExposurePreviewFrame,
    val solve: ((Float) -> RawLegacyExposurePreviewFrame?) -> Float?,
)

internal data class RawHdrNetExposureEvaluation(
    val medianLog2Ratio: Float,
    val robustLog2Loss: Float,
    val meanAbsoluteLog2Ratio: Float,
    val matchRate: Float,
    val recommendedExposureCorrectionEv: Float,
    val evaluatedCandidateCount: Int,
    val converged: Boolean,
)

internal data class RawHdrNetExposureCandidate<T>(
    val shortGain: Float,
    val longGain: Float,
    val payload: T,
    val evaluation: RawHdrNetExposureEvaluation,
)

/**
 * Capture-side viewfinder matching derived from PhotonCamera 1.27.1's spatial solver. Native code
 * owns reference linearization and reliable-grid statistics. Classic HDR retains adaptive search;
 * Photon HDR uses the same robust grid residual statistics while solving only its short gain.
 */
internal object RawLegacyAutoExposureMatcher {
    private const val TAG = "RawLegacyAutoExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private data class ViewfinderReference(
        val frame: RawLegacyExposurePreviewFrame,
    )

    private enum class HdrNetSolveDirection {
        LOWER_SHORT,
        RAISE_SHORT,
    }

    private data class HdrNetProbe<T>(
        val adjustmentEv: Float,
        val shortGain: Float,
        val payload: T,
    )

    fun createRequest(
        capturePreviewThumbnail: Bitmap?,
    ): RawLegacyAutoExposureRequest? {
        val reference = capturePreviewThumbnail?.let {
            buildReference(it)
        }
        if (capturePreviewThumbnail != null && reference == null) {
            PLog.w(TAG, "Viewfinder matching skipped: capture preview is unavailable")
        }
        return reference?.let {
            RawLegacyAutoExposureRequest(
                width = it.frame.width,
                height = it.frame.height,
                referenceFrame = it.frame,
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
     * Matches Photon HDR directly against the complete capture-time viewfinder image.
     *
     * The HDRNet candidate and classic ARGB image are both converted to display-linear Rec.709
     * luma grids before entering the same native solver. Search, convergence, weighting and final
     * selection therefore have one implementation. HDRNet only constrains the native exposure-EV
     * search to one side of zero and maps that EV exclusively to short while long remains fixed.
     */
    fun <T> solveHdrNetExposure(
        referenceFrame: RawLegacyExposurePreviewFrame,
        initialShortGain: Float,
        initialLongGain: Float,
        evaluateCandidate: (shortGain: Float, longGain: Float) -> Pair<T, FloatArray>?,
    ): RawHdrNetExposureCandidate<T>? {
        if (!initialShortGain.isFinite() || !initialLongGain.isFinite() ||
            initialShortGain <= 0f || initialLongGain < initialShortGain
        ) {
            return null
        }
        val solver = RawLegacyAutoExposureNativeBridge.Solver.create(referenceFrame)
            ?: run {
                PLog.w(TAG, "Photon HDR matching skipped: viewfinder grid is unreliable")
                return null
            }
        return solver.use {
            val probes = ArrayList<HdrNetProbe<T>>()
            var solveDirection: HdrNetSolveDirection? = null
            while (true) {
                val adjustmentEv = solver.nextExposureEv() ?: break
                val adjustedShortGain = initialShortGain * 2.0f.pow(adjustmentEv)
                if (!adjustedShortGain.isFinite() || adjustedShortGain <= 0f) break
                val shortGain = minOf(adjustedShortGain, initialLongGain)
                val probeStartNs = System.nanoTime()
                val candidate = evaluateCandidate(shortGain, initialLongGain) ?: break
                val candidateReadyNs = System.nanoTime()
                if (!solver.submitCandidate(
                        exposureEv = adjustmentEv,
                        displayLinearLumas = candidate.second,
                        columns = DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_WIDTH,
                        rows = DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_HEIGHT,
                    )
                ) {
                    return null
                }
                val sample = solver.lastSample() ?: return null
                probes += HdrNetProbe(
                    adjustmentEv = adjustmentEv,
                    shortGain = shortGain,
                    payload = candidate.first,
                )
                if (solveDirection == null) {
                    val direction = when {
                        sample.recommendedExposureCorrectionEv < 0f ->
                            HdrNetSolveDirection.LOWER_SHORT
                        sample.recommendedExposureCorrectionEv > 0f ->
                            HdrNetSolveDirection.RAISE_SHORT
                        sample.medianLog2Ratio >= 0f -> HdrNetSolveDirection.LOWER_SHORT
                        else -> HdrNetSolveDirection.RAISE_SHORT
                    }
                    solveDirection = direction
                    val maximumRaiseEv = log2Ratio(initialLongGain, initialShortGain)
                        .coerceAtLeast(0f)
                    val boundsConfigured = when (direction) {
                        HdrNetSolveDirection.LOWER_SHORT ->
                            solver.configureExposureBounds(-Float.MAX_VALUE, 0f)
                        HdrNetSolveDirection.RAISE_SHORT ->
                            solver.configureExposureBounds(0f, maximumRaiseEv)
                    }
                    if (!boundsConfigured) return null
                }
                val probeReadyNs = System.nanoTime()
                PLog.d(
                    TAG,
                    "HDRNet viewfinder probe: index=${probes.size} " +
                        "adjustmentAxis=${if (adjustmentEv == 0f) "BASE" else "SHORT"} " +
                        "adjustmentEv=$adjustmentEv " +
                        "shortGain=$shortGain longGain=$initialLongGain " +
                        "hdrRatio=${initialLongGain / shortGain} " +
                        "solveDirection=$solveDirection " +
                        "matchedCells=${sample.matchedCellCount}/${sample.validCellCount} " +
                        "medianLog2Ratio=${sample.medianLog2Ratio} " +
                        "robustLog2Loss=${sample.robustLog2Loss} " +
                        "meanAbsoluteLog2Ratio=${sample.meanAbsoluteLog2Ratio} " +
                        "matchRate=${sample.matchRate} " +
                        "recommendedExposureCorrectionEv=" +
                        "${sample.recommendedExposureCorrectionEv} " +
                        "candidateMs=${(candidateReadyNs - probeStartNs) / 1_000_000f} " +
                        "matchStatsMs=${(probeReadyNs - candidateReadyNs) / 1_000_000f} " +
                        "totalMs=${(probeReadyNs - probeStartNs) / 1_000_000f}",
                )
            }
            val result = solver.result() ?: return@use null
            val selectedProbe = probes.minByOrNull {
                abs(it.adjustmentEv - result.best.exposureEv)
            }?.takeIf {
                abs(it.adjustmentEv - result.best.exposureEv) < HDRNET_PROBE_LOOKUP_TOLERANCE_EV
            } ?: return@use null
            val selected = RawHdrNetExposureCandidate(
                shortGain = selectedProbe.shortGain,
                longGain = initialLongGain,
                payload = selectedProbe.payload,
                evaluation = RawHdrNetExposureEvaluation(
                    medianLog2Ratio = result.best.medianLog2Ratio,
                    robustLog2Loss = result.best.robustLog2Loss,
                    meanAbsoluteLog2Ratio = result.best.meanAbsoluteLog2Ratio,
                    matchRate = result.best.matchRate,
                    recommendedExposureCorrectionEv =
                        result.best.recommendedExposureCorrectionEv,
                    evaluatedCandidateCount = result.evaluatedSampleCount,
                    converged = solver.hasConverged(),
                ),
            )
            PLog.i(
                TAG,
                "HDRNet viewfinder result: shortGain=${selected.shortGain} " +
                    "longGain=${selected.longGain} " +
                    "hdrRatio=${selected.longGain / selected.shortGain} " +
                    "solveDirection=$solveDirection " +
                    "medianLog2Ratio=${selected.evaluation.medianLog2Ratio} " +
                    "robustLog2Loss=${selected.evaluation.robustLog2Loss} " +
                    "meanAbsoluteLog2Ratio=${selected.evaluation.meanAbsoluteLog2Ratio} " +
                    "matchRate=${selected.evaluation.matchRate} " +
                    "recommendedExposureCorrectionEv=" +
                    "${selected.evaluation.recommendedExposureCorrectionEv} " +
                    "converged=${selected.evaluation.converged} " +
                    "candidateCount=${selected.evaluation.evaluatedCandidateCount} " +
                    "convergenceCondition=SHARED_ROBUST_CORRECTION",
            )
            selected
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
                            "recommendedExposureCorrectionEv=" +
                            "${sample.recommendedExposureCorrectionEv} " +
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
                    "recommendedExposureCorrectionEv=" +
                    "${result.best.recommendedExposureCorrectionEv} " +
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

    private const val HDRNET_PROBE_LOOKUP_TOLERANCE_EV = 0.001f

    private fun log2Ratio(value: Float, reference: Float): Float =
        (ln((value / reference).toDouble()) / ln(2.0)).toFloat()

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
