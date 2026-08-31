package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
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
    val centerErrorEv: Float,
    val spanErrorEv: Float,
    val curveSlopeError: Float,
    val referenceSpanEv: Float,
    val medianLog2Ratio: Float,
    val robustLog2Loss: Float,
    val meanAbsoluteLog2Ratio: Float,
    val matchRate: Float,
    val recommendedExposureCorrectionEv: Float,
    val evaluatedCandidateCount: Int,
    val converged: Boolean,
    val usedOneDimensionalFallback: Boolean,
    val jacobianNormalizedDeterminant: Float,
)

internal data class RawHdrNetExposureCandidate<T>(
    val shortGain: Float,
    val longGain: Float,
    val payload: T,
    val evaluation: RawHdrNetExposureEvaluation,
)

/**
 * Capture-side viewfinder matching derived from PhotonCamera 1.27.1's spatial solver. Native code
 * owns reference linearization, robust grid statistics and both exposure solvers. Kotlin only
 * evaluates the HDRNet candidates requested by native code and retains their inference payloads.
 */
internal object RawLegacyAutoExposureMatcher {
    private const val TAG = "RawLegacyAutoExposureMatcher"
    private const val PREVIEW_LONG_EDGE = 256

    private data class ViewfinderReference(
        val frame: RawLegacyExposurePreviewFrame,
    )

    private data class HdrNetInference<T>(
        val shortEv: Float,
        val hdrRatioEv: Float,
        val shortGain: Float,
        val longGain: Float,
        val payload: T,
    )

    fun createRequest(
        capturePreviewThumbnail: Bitmap?,
    ): RawLegacyAutoExposureRequest? {
        val reference = capturePreviewThumbnail?.let(::buildReference)
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
            ViewfinderReference(
                frame = RawLegacyExposurePreviewFrame(
                    width = size.width,
                    height = size.height,
                    argbPixels = sampleBitmap(bitmap, size.width, size.height),
                ),
            )
        } catch (error: Throwable) {
            PLog.e(TAG, "Failed to analyze capture preview", error)
            null
        }
    }

    /**
     * Drives the native two-dimensional HDRNet matcher.
     *
     * Native code owns P20-P80 curve fitting, the damped Newton/Broyden state, convergence,
     * step limits, Huber-loss guarding and the one-dimensional fallback. This method only maps
     * native `(short EV, HDR-ratio EV)` requests to gains and runs the expensive model callback.
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
        val initialHdrRatio = initialLongGain / initialShortGain
        if (!initialHdrRatio.isFinite() || initialHdrRatio < 1f) return null
        val maximumHdrRatio = maxOf(
            initialHdrRatio,
            RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO,
        )
        val solver = RawLegacyAutoExposureNativeBridge.Solver.create(referenceFrame)
            ?: run {
                PLog.w(TAG, "Photon HDR matching skipped: viewfinder grid is unreliable")
                return null
            }
        return solver.use {
            if (!solver.startHdrNetSolve(initialHdrRatio, maximumHdrRatio)) {
                return@use null
            }
            val inferences = ArrayList<HdrNetInference<T>>()
            while (true) {
                val parameters = solver.nextHdrNetParameters() ?: break
                val shortGain = initialShortGain * 2.0f.pow(parameters.shortEv)
                val hdrRatio = (initialHdrRatio * 2.0f.pow(parameters.hdrRatioEv))
                    .coerceAtLeast(1f)
                val longGain = shortGain * hdrRatio
                if (!shortGain.isFinite() || !longGain.isFinite() ||
                    shortGain <= 0f || longGain < shortGain
                ) {
                    return@use null
                }
                val probeStartNs = System.nanoTime()
                val candidate = evaluateCandidate(shortGain, longGain) ?: return@use null
                val candidateReadyNs = System.nanoTime()
                val sample = solver.submitHdrNetCandidate(
                    parameters = parameters,
                    displayLinearLumas = candidate.second,
                    columns = DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_WIDTH,
                    rows = DngPhotonProfileGainTableGenerator.HDRNET_PGTM_GRID_HEIGHT,
                ) ?: return@use null
                inferences += HdrNetInference(
                    shortEv = parameters.shortEv,
                    hdrRatioEv = parameters.hdrRatioEv,
                    shortGain = shortGain,
                    longGain = longGain,
                    payload = candidate.first,
                )
                val probeReadyNs = System.nanoTime()
                PLog.d(
                    TAG,
                    "HDRNet viewfinder probe: index=${inferences.size} " +
                        "adjustmentAxis=${parameters.axis} " +
                        "shortEv=${parameters.shortEv} ratioEv=${parameters.hdrRatioEv} " +
                        "shortGain=$shortGain longGain=$longGain hdrRatio=$hdrRatio " +
                        "matchedCells=${sample.matchedCellCount}/${sample.validCellCount} " +
                        "curveFitCells=${sample.curveFitCellCount} " +
                        "centerErrorEv=${sample.centerErrorEv} " +
                        "spanErrorEv=${sample.spanErrorEv} " +
                        "curveSlopeError=${sample.curveSlopeError} " +
                        "referenceP20Ev=${sample.referenceP20Ev} " +
                        "referenceP50Ev=${sample.referenceP50Ev} " +
                        "referenceP80Ev=${sample.referenceP80Ev} " +
                        "robustLog2Loss=${sample.robustLog2Loss} " +
                        "matchRate=${sample.matchRate} " +
                        "recommendedExposureCorrectionEv=" +
                        "${sample.recommendedExposureCorrectionEv} " +
                        "candidateMs=${(candidateReadyNs - probeStartNs) / 1_000_000f} " +
                        "matchStatsMs=${(probeReadyNs - candidateReadyNs) / 1_000_000f} " +
                        "totalMs=${(probeReadyNs - probeStartNs) / 1_000_000f}",
                )
            }
            val result = solver.hdrNetResult() ?: return@use null
            val selectedInference = inferences.minByOrNull {
                abs(it.shortEv - result.shortEv) +
                    abs(it.hdrRatioEv - result.hdrRatioEv)
            }?.takeIf {
                abs(it.shortEv - result.shortEv) < HDRNET_PAYLOAD_LOOKUP_TOLERANCE_EV &&
                    abs(it.hdrRatioEv - result.hdrRatioEv) <
                    HDRNET_PAYLOAD_LOOKUP_TOLERANCE_EV
            } ?: return@use null
            val sample = result.sample
            val selected = RawHdrNetExposureCandidate(
                shortGain = selectedInference.shortGain,
                longGain = selectedInference.longGain,
                payload = selectedInference.payload,
                evaluation = RawHdrNetExposureEvaluation(
                    centerErrorEv = sample.centerErrorEv,
                    spanErrorEv = sample.spanErrorEv,
                    curveSlopeError = sample.curveSlopeError,
                    referenceSpanEv = sample.referenceSpanEv,
                    medianLog2Ratio = sample.medianLog2Ratio,
                    robustLog2Loss = sample.robustLog2Loss,
                    meanAbsoluteLog2Ratio = sample.meanAbsoluteLog2Ratio,
                    matchRate = sample.matchRate,
                    recommendedExposureCorrectionEv =
                        sample.recommendedExposureCorrectionEv,
                    evaluatedCandidateCount = result.evaluatedCandidateCount,
                    converged = result.converged,
                    usedOneDimensionalFallback = result.usedOneDimensionalFallback,
                    jacobianNormalizedDeterminant =
                        result.jacobianNormalizedDeterminant,
                ),
            )
            PLog.i(
                TAG,
                "HDRNet viewfinder result: shortGain=${selected.shortGain} " +
                    "longGain=${selected.longGain} " +
                    "hdrRatio=${selected.longGain / selected.shortGain} " +
                    "shortEv=${result.shortEv} ratioEv=${result.hdrRatioEv} " +
                    "centerErrorEv=${sample.centerErrorEv} " +
                    "spanErrorEv=${sample.spanErrorEv} " +
                    "curveSlopeError=${sample.curveSlopeError} " +
                    "referenceSpanEv=${sample.referenceSpanEv} " +
                    "robustLog2Loss=${sample.robustLog2Loss} " +
                    "matchRate=${sample.matchRate} " +
                    "jacobianNormalizedDeterminant=" +
                    "${result.jacobianNormalizedDeterminant} " +
                    "fallback1d=${result.usedOneDimensionalFallback} " +
                    "converged=${result.converged} " +
                    "candidateCount=${result.evaluatedCandidateCount}",
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

    private const val HDRNET_PAYLOAD_LOOKUP_TOLERANCE_EV = 0.001f

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
