package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.graphics.Rect
import com.hinnka.mycamera.preview.PortraitMaskSnapshot
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.pow

internal data class RawLegacyExposurePreviewFrame(
    val width: Int,
    val height: Int,
    val argbPixels: IntArray,
    /** Optional per-pixel soft portrait target aligned exactly with [argbPixels]. */
    val portraitPriorityWeights: FloatArray? = null,
)

internal data class RawLegacyAutoExposureRequest(
    val width: Int,
    val height: Int,
    /** Complete capture-time viewfinder image retained for Photon HDR spatial matching. */
    val referenceFrame: RawLegacyExposurePreviewFrame,
    /** Center fraction used by the scalar viewfinder matcher on both axes. */
    val scalarMatchingCenterFractionPerAxis: Float,
    val highlightClippingConstraint: RawLegacyHighlightClippingConstraint?,
    val solve: (
        renderSample: (Float) -> RawLegacyExposurePreviewFrame?,
        maximumExposureEv: Float?,
    ) -> Float?,
)

/** RAW-domain highlight guard used only when HDR+ processing is disabled. */
internal data class RawLegacyHighlightClippingConstraint(
    /** Fraction retained on both axes, centered inside the final RAW output bounds. */
    val centerFractionPerAxis: Float,
    /** Maximum fraction of pixels whose brightest linear RAW channel may reach one. */
    val maximumClippedFraction: Float,
) {
    init {
        require(centerFractionPerAxis.isFinite() && centerFractionPerAxis > 0f &&
            centerFractionPerAxis <= 1f)
        require(maximumClippedFraction.isFinite() && maximumClippedFraction in 0f..1f)
    }

    companion object {
        val HDR_PLUS_DISABLED = RawLegacyHighlightClippingConstraint(
            centerFractionPerAxis = 2f / 3f,
            maximumClippedFraction = 0.005f,
        )
    }
}

/** Log2-domain peak-signal histogram produced from the linear RAW texture. */
internal data class RawLegacyHighlightHistogram(
    val counts: LongArray,
    val minimumLog2Signal: Float,
    val log2SignalStep: Float,
    val pixelCount: Long,
) {
    init {
        require(counts.isNotEmpty())
        require(minimumLog2Signal.isFinite())
        require(log2SignalStep.isFinite() && log2SignalStep > 0f)
        require(pixelCount > 0L)
        require(counts.all { it >= 0L })
        require(counts.sum() == pixelCount)
    }
}

internal data class RawLegacyHighlightExposureLimit(
    val maximumExposureOffsetEv: Float,
    val allowedClippedPixelCount: Long,
    val conservativeClippedPixelCountAtLimit: Long,
    val pixelCount: Long,
)

internal data class RawHdrNetExposureEvaluation(
    val centerErrorEv: Float,
    val spanErrorEv: Float,
    val curveSlopeError: Float,
    val referenceSpanEv: Float,
    val highlightTargetErrorEv: Float,
    val shadowTargetErrorEv: Float,
    val shortTargetCorrectionEv: Float,
    val longTargetCorrectionEv: Float,
    val medianLog2Ratio: Float,
    val robustLog2Loss: Float,
    val meanAbsoluteLog2Ratio: Float,
    val meanAbsolutePerceptualLightnessError: Float,
    val matchRate: Float,
    val coordinateComparedEdgeCount: Int,
    val coordinateMatchRate: Float,
    val coordinatesMatched: Boolean?,
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
    private const val PORTRAIT_PRIORITY_MINIMUM_AREA_FRACTION = 0.045f
    const val SCALAR_MATCH_CENTER_FRACTION_PER_AXIS = 2f / 3f

    private data class ViewfinderReference(
        val frame: RawLegacyExposurePreviewFrame,
    )

    private data class PortraitPrioritySource(
        val snapshot: PortraitMaskSnapshot,
        val areaFraction: Float,
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
        capturePortraitMask: PortraitMaskSnapshot? = null,
        viewfinderMirroredHorizontally: Boolean = false,
        viewfinderPreviewToCaptureRotationDegrees: Int = 0,
        scalarMatchingCenterFractionPerAxis: Float = 1f,
        highlightClippingConstraint: RawLegacyHighlightClippingConstraint? = null,
    ): RawLegacyAutoExposureRequest? {
        if (!scalarMatchingCenterFractionPerAxis.isFinite() ||
            scalarMatchingCenterFractionPerAxis <= 0f ||
            scalarMatchingCenterFractionPerAxis > 1f
        ) {
            return null
        }
        val normalizedViewfinderRotation = Math.floorMod(
            viewfinderPreviewToCaptureRotationDegrees,
            360,
        )
        if (viewfinderMirroredHorizontally &&
            normalizedViewfinderRotation != 0 && normalizedViewfinderRotation != 90 &&
            normalizedViewfinderRotation != 180 && normalizedViewfinderRotation != 270
        ) {
            PLog.w(
                TAG,
                "Viewfinder matching skipped: unsupported mirrored preview rotation=" +
                    normalizedViewfinderRotation,
            )
            return null
        }
        val bitmap = capturePreviewThumbnail ?: return null
        val portraitPriority = resolvePortraitPriority(
            snapshot = capturePortraitMask,
            expectedRotationDegrees = normalizedViewfinderRotation,
        )
        val detectedPortraitAreaFraction = portraitPriority?.areaFraction
            ?: capturePortraitMask?.let(::portraitAreaFraction)
        // A portrait outside the historical center crop still has to be observable by the scalar
        // solver. The RAW highlight guard remains independently constrained to its center region.
        val effectiveScalarCenterFraction = if (portraitPriority != null) {
            1f
        } else {
            scalarMatchingCenterFractionPerAxis
        }
        PLog.i(
            TAG,
            "Viewfinder portrait target: available=${capturePortraitMask != null} " +
                "areaFraction=$detectedPortraitAreaFraction " +
                "minimumAreaFraction=$PORTRAIT_PRIORITY_MINIMUM_AREA_FRACTION " +
                "active=${portraitPriority != null} " +
                "previewToCaptureRotation=" +
                "$normalizedViewfinderRotation " +
                "portraitMaskRotation=${capturePortraitMask?.previewToCaptureRotationDegrees} " +
                "viewfinderMirroredHorizontally=$viewfinderMirroredHorizontally " +
                "scalarCenterFraction=$effectiveScalarCenterFraction",
        )
        val completeReference = buildReference(
            bitmap = bitmap,
            portraitPriority = portraitPriority,
            mirrorHorizontally = viewfinderMirroredHorizontally,
            previewToCaptureRotationDegrees = normalizedViewfinderRotation,
        )
        val scalarReference = when {
            completeReference == null -> null
            effectiveScalarCenterFraction >= 1f -> completeReference
            else -> buildReference(
                bitmap = bitmap,
                centerFractionPerAxis = effectiveScalarCenterFraction,
                portraitPriority = portraitPriority,
                mirrorHorizontally = viewfinderMirroredHorizontally,
                previewToCaptureRotationDegrees = normalizedViewfinderRotation,
            )
        }
        if (completeReference == null || scalarReference == null) {
            PLog.w(TAG, "Viewfinder matching skipped: capture preview is unavailable")
        }
        return completeReference?.let { complete ->
            val scalar = scalarReference ?: return@let null
            RawLegacyAutoExposureRequest(
                width = scalar.frame.width,
                height = scalar.frame.height,
                referenceFrame = complete.frame,
                scalarMatchingCenterFractionPerAxis =
                    effectiveScalarCenterFraction,
                highlightClippingConstraint = highlightClippingConstraint,
                solve = { renderSample, maximumExposureEv ->
                    solve(scalar, renderSample, maximumExposureEv)
                },
            )
        }
    }

    fun centeredBounds(
        outputBounds: Rect,
        centerFractionPerAxis: Float,
    ): Rect? {
        if (outputBounds.isEmpty || !centerFractionPerAxis.isFinite() ||
            centerFractionPerAxis <= 0f || centerFractionPerAxis > 1f
        ) {
            return null
        }
        val constrainedWidth = floor(
            outputBounds.width().toDouble() * centerFractionPerAxis.toDouble(),
        ).toInt().coerceIn(1, outputBounds.width())
        val constrainedHeight = floor(
            outputBounds.height().toDouble() * centerFractionPerAxis.toDouble(),
        ).toInt().coerceIn(1, outputBounds.height())
        val left = outputBounds.left + (outputBounds.width() - constrainedWidth) / 2
        val top = outputBounds.top + (outputBounds.height() - constrainedHeight) / 2
        return Rect(left, top, left + constrainedWidth, top + constrainedHeight)
    }

    fun centeredHighlightBounds(
        outputBounds: Rect,
        constraint: RawLegacyHighlightClippingConstraint,
    ): Rect? = centeredBounds(outputBounds, constraint.centerFractionPerAxis)

    /**
     * Converts a conservative RAW peak histogram quantile into the largest additional EV whose
     * total BaselineExposure cannot clip more than the configured pixel fraction.
     */
    fun resolveHighlightExposureLimit(
        histogram: RawLegacyHighlightHistogram,
        sourceBaselineExposureEv: Float,
        constraint: RawLegacyHighlightClippingConstraint,
    ): RawLegacyHighlightExposureLimit? {
        if (!sourceBaselineExposureEv.isFinite()) return null
        val allowedClippedPixelCount = floor(
            histogram.pixelCount.toDouble() * constraint.maximumClippedFraction.toDouble(),
        ).toLong()
        var clippedPixelCount = 0L
        var thresholdBin = histogram.counts.size
        for (bin in histogram.counts.lastIndex downTo 0) {
            val countIncludingBin = clippedPixelCount + histogram.counts[bin]
            if (countIncludingBin > allowedClippedPixelCount) break
            clippedPixelCount = countIncludingBin
            thresholdBin = bin
        }
        // Every value in thresholdBin is treated as clipped. Using its lower edge therefore makes
        // the bound conservative even when many samples share the quantile boundary.
        val clippingThresholdLog2 = histogram.minimumLog2Signal +
            thresholdBin.toFloat() * histogram.log2SignalStep
        val maximumTotalExposureEv = -clippingThresholdLog2
        val maximumExposureOffsetEv =
            maximumTotalExposureEv - DngBaselineExposure.sanitize(sourceBaselineExposureEv)
        if (!maximumExposureOffsetEv.isFinite()) return null
        return RawLegacyHighlightExposureLimit(
            maximumExposureOffsetEv = maximumExposureOffsetEv,
            allowedClippedPixelCount = allowedClippedPixelCount,
            conservativeClippedPixelCountAtLimit = clippedPixelCount,
            pixelCount = histogram.pixelCount,
        )
    }

    private fun buildReference(
        bitmap: Bitmap,
        centerFractionPerAxis: Float = 1f,
        portraitPriority: PortraitPrioritySource? = null,
        mirrorHorizontally: Boolean = false,
        previewToCaptureRotationDegrees: Int = 0,
    ): ViewfinderReference? {
        if (bitmap.isRecycled || bitmap.width <= 0 || bitmap.height <= 0) return null
        return try {
            val sourceBounds = centeredBounds(
                outputBounds = Rect(0, 0, bitmap.width, bitmap.height),
                centerFractionPerAxis = centerFractionPerAxis,
            ) ?: return null
            val size = longEdgeSize(
                sourceBounds.width(),
                sourceBounds.height(),
                PREVIEW_LONG_EDGE,
            )
            ViewfinderReference(
                frame = RawLegacyExposurePreviewFrame(
                    width = size.width,
                    height = size.height,
                    argbPixels = sampleBitmap(
                        bitmap = bitmap,
                        width = size.width,
                        height = size.height,
                        sourceBounds = sourceBounds,
                        mirrorHorizontally = mirrorHorizontally,
                        previewToCaptureRotationDegrees = previewToCaptureRotationDegrees,
                    ),
                    portraitPriorityWeights = portraitPriority?.let { priority ->
                        samplePortraitPriorityWeights(
                            portraitPriority = priority,
                            rotatedBitmapWidth = bitmap.width,
                            rotatedBitmapHeight = bitmap.height,
                            width = size.width,
                            height = size.height,
                            sourceBounds = sourceBounds,
                            mirrorHorizontally = mirrorHorizontally,
                            previewToCaptureRotationDegrees = previewToCaptureRotationDegrees,
                        )
                    },
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
     * Native code jointly searches independent short and long EV coordinates. Highlight-grid
     * error drives short, shadow-grid error drives long, and the measured cross-response is kept
     * in the Jacobian. Selection and convergence use the full-grid match rate. This maps native
     * requests back to short EV and HDR-ratio EV and runs the model callback.
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
                val coordinatesMatched = solver.lastCandidateCoordinatesMatch()
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
                        "longEv=${parameters.shortEv + parameters.hdrRatioEv} " +
                        "shortGain=$shortGain longGain=$longGain hdrRatio=$hdrRatio " +
                        "matchedCells=${sample.matchedCellCount}/${sample.validCellCount} " +
                        "curveFitCells=${sample.curveFitCellCount} " +
                        "centerErrorEv=${sample.centerErrorEv} " +
                        "spanErrorEv=${sample.spanErrorEv} " +
                        "curveSlopeError=${sample.curveSlopeError} " +
                        "highlightTargetErrorEv=${sample.highlightTargetErrorEv} " +
                        "shadowTargetErrorEv=${sample.shadowTargetErrorEv} " +
                        "shortTargetCorrectionEv=${sample.shortTargetCorrectionEv} " +
                        "longTargetCorrectionEv=${sample.longTargetCorrectionEv} " +
                        "referenceP20Ev=${sample.referenceP20Ev} " +
                        "referenceP50Ev=${sample.referenceP50Ev} " +
                        "referenceP80Ev=${sample.referenceP80Ev} " +
                        "robustLog2Loss=${sample.robustLog2Loss} " +
                        "matchRate=${sample.matchRate} " +
                        "meanPerceptualLightnessError=" +
                        "${sample.meanAbsolutePerceptualLightnessError} " +
                        "coordinateEdges=${sample.coordinateComparedEdgeCount} " +
                        "coordinateMatchRate=${sample.coordinateMatchRate} " +
                        "coordinatesMatched=$coordinatesMatched " +
                        "recommendedExposureCorrectionEv=" +
                        "${sample.recommendedExposureCorrectionEv} " +
                        "candidateMs=${(candidateReadyNs - probeStartNs) / 1_000_000f} " +
                        "matchStatsMs=${(probeReadyNs - candidateReadyNs) / 1_000_000f} " +
                        "totalMs=${(probeReadyNs - probeStartNs) / 1_000_000f}",
                )
            }
            val result = solver.hdrNetResult() ?: return@use null
            if (result.sample.coordinatesMatched == false) {
                PLog.w(
                    TAG,
                    "HDRNet viewfinder matching rejected: " +
                        "reason=COORDINATE_MISMATCH " +
                        "matchRate=${result.sample.matchRate} " +
                        "coordinateEdges=${result.sample.coordinateComparedEdgeCount} " +
                        "coordinateMatchRate=${result.sample.coordinateMatchRate} " +
                        "coordinatesMatched=${result.sample.coordinatesMatched} " +
                        "candidateCount=${result.evaluatedCandidateCount}",
                )
                return@use null
            }
            if (!result.converged) {
                PLog.w(
                    TAG,
                    "HDRNet viewfinder matching did not reach the early-convergence target; " +
                        "using the highest-match-rate candidate: " +
                        "matchRate=${result.sample.matchRate} " +
                        "coordinateEdges=${result.sample.coordinateComparedEdgeCount} " +
                        "coordinateMatchRate=${result.sample.coordinateMatchRate} " +
                        "coordinatesMatched=${result.sample.coordinatesMatched} " +
                        "candidateCount=${result.evaluatedCandidateCount}",
                )
            }
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
                    highlightTargetErrorEv = sample.highlightTargetErrorEv,
                    shadowTargetErrorEv = sample.shadowTargetErrorEv,
                    shortTargetCorrectionEv = sample.shortTargetCorrectionEv,
                    longTargetCorrectionEv = sample.longTargetCorrectionEv,
                    medianLog2Ratio = sample.medianLog2Ratio,
                    robustLog2Loss = sample.robustLog2Loss,
                    meanAbsoluteLog2Ratio = sample.meanAbsoluteLog2Ratio,
                    meanAbsolutePerceptualLightnessError =
                        sample.meanAbsolutePerceptualLightnessError,
                    matchRate = sample.matchRate,
                    coordinateComparedEdgeCount = sample.coordinateComparedEdgeCount,
                    coordinateMatchRate = sample.coordinateMatchRate,
                    coordinatesMatched = sample.coordinatesMatched,
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
                    "longEv=${result.shortEv + result.hdrRatioEv} " +
                    "centerErrorEv=${sample.centerErrorEv} " +
                    "spanErrorEv=${sample.spanErrorEv} " +
                    "curveSlopeError=${sample.curveSlopeError} " +
                    "highlightTargetErrorEv=${sample.highlightTargetErrorEv} " +
                    "shadowTargetErrorEv=${sample.shadowTargetErrorEv} " +
                    "shortTargetCorrectionEv=${sample.shortTargetCorrectionEv} " +
                    "longTargetCorrectionEv=${sample.longTargetCorrectionEv} " +
                    "referenceSpanEv=${sample.referenceSpanEv} " +
                    "robustLog2Loss=${sample.robustLog2Loss} " +
                    "matchRate=${sample.matchRate} " +
                    "meanPerceptualLightnessError=" +
                    "${sample.meanAbsolutePerceptualLightnessError} " +
                    "coordinateEdges=${sample.coordinateComparedEdgeCount} " +
                    "coordinateMatchRate=${sample.coordinateMatchRate} " +
                    "coordinatesMatched=${sample.coordinatesMatched} " +
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
        maximumExposureEv: Float?,
    ): Float? {
        val solver = RawLegacyAutoExposureNativeBridge.Solver.create(reference.frame)
            ?: run {
                PLog.w(
                    TAG,
                    "Viewfinder brightness matching skipped: " +
                        "insufficient reliable non-endpoint cells",
                )
                return null
            }
        return solver.use {
            maximumExposureEv?.let { requestedMaximum ->
                if (!requestedMaximum.isFinite() ||
                    requestedMaximum < MeteringSystem.RAW_EXPOSURE_MIN_EV ||
                    !solver.configureExposureBounds(
                        MeteringSystem.RAW_EXPOSURE_MIN_EV,
                        minOf(requestedMaximum, MeteringSystem.RAW_EXPOSURE_MAX_EV),
                    )
                ) {
                    PLog.e(
                        TAG,
                        "Viewfinder brightness matching has no feasible highlight-safe range: " +
                            "maximumExposureEv=$requestedMaximum " +
                            "minimumExposureEv=${MeteringSystem.RAW_EXPOSURE_MIN_EV}",
                    )
                    return@use null
                }
            }
            while (true) {
                val exposureEv = solver.nextExposureEv() ?: break
                val frame = renderSample(exposureEv) ?: return@use null
                if (!solver.submitCandidate(exposureEv, frame)) return@use null
                val coordinatesMatched = solver.lastCandidateCoordinatesMatch()
                solver.lastSample()?.let { sample ->
                    PLog.d(
                        TAG,
                        "Viewfinder brightness matching sample: " +
                            "exposureEv=${sample.exposureEv} " +
                            "matchedCells=${sample.matchedCellCount}/${sample.validCellCount} " +
                            "matchRate=${sample.matchRate} " +
                            "meanPerceptualLightnessError=" +
                            "${sample.meanAbsolutePerceptualLightnessError} " +
                            "meanAbsoluteLog2Ratio=${sample.meanAbsoluteLog2Ratio} " +
                            "medianLog2Ratio=${sample.medianLog2Ratio} " +
                            "robustLog2Loss=${sample.robustLog2Loss} " +
                            "recommendedExposureCorrectionEv=" +
                            "${sample.recommendedExposureCorrectionEv} " +
                            "referenceWeightSum=${sample.referenceWeightSum} " +
                            "coordinateEdges=${sample.coordinateComparedEdgeCount} " +
                            "coordinateMatchRate=${sample.coordinateMatchRate} " +
                            "coordinatesMatched=$coordinatesMatched",
                    )
                }
            }
            val result = solver.result() ?: return@use null
            if (result.best.coordinatesMatched == false) {
                PLog.w(
                    TAG,
                    "Viewfinder brightness matching rejected: " +
                        "reason=COORDINATE_MISMATCH " +
                        "matchRate=${result.best.matchRate} " +
                        "requiredMatchRate=${result.requiredGridMatchRate} " +
                        "coordinateEdges=${result.best.coordinateComparedEdgeCount} " +
                        "coordinateMatchRate=${result.best.coordinateMatchRate} " +
                        "coordinatesMatched=${result.best.coordinatesMatched}",
                )
                return@use null
            }
            if (!solver.hasConverged()) {
                PLog.w(
                    TAG,
                    "Viewfinder brightness matching did not reach the early-convergence " +
                        "target; using the highest-match-rate candidate: " +
                        "matchRate=${result.best.matchRate} " +
                        "requiredMatchRate=${result.requiredGridMatchRate} " +
                        "coordinateEdges=${result.best.coordinateComparedEdgeCount} " +
                        "coordinateMatchRate=${result.best.coordinateMatchRate} " +
                        "coordinatesMatched=${result.best.coordinatesMatched}",
                )
            }
            PLog.i(
                TAG,
                "Viewfinder brightness matching result: " +
                    "exposureEv=${result.best.exposureEv} " +
                    "matchedCells=${result.best.matchedCellCount}/${result.best.validCellCount} " +
                    "matchRate=${result.best.matchRate} " +
                    "meanPerceptualLightnessError=" +
                    "${result.best.meanAbsolutePerceptualLightnessError} " +
                    "meanAbsoluteLog2Ratio=${result.best.meanAbsoluteLog2Ratio} " +
                    "medianLog2Ratio=${result.best.medianLog2Ratio} " +
                    "robustLog2Loss=${result.best.robustLog2Loss} " +
                    "recommendedExposureCorrectionEv=" +
                    "${result.best.recommendedExposureCorrectionEv} " +
                    "referenceWeightSum=${result.best.referenceWeightSum} " +
                    "coordinateEdges=${result.best.coordinateComparedEdgeCount} " +
                    "coordinateMatchRate=${result.best.coordinateMatchRate} " +
                    "coordinatesMatched=${result.best.coordinatesMatched} " +
                    "sampleCount=${result.evaluatedSampleCount} " +
                    "excludedShadowCells=${result.excludedShadowCellCount} " +
                    "excludedHighlightCells=${result.excludedHighlightCellCount} " +
                    "shadowWeightZeroLinear=${result.shadowWeightZeroLinear} " +
                    "highlightWeightZeroLinear=${result.highlightWeightZeroLinear} " +
                    "huberDeltaEv=${result.huberDeltaEv} " +
                    "perceptualLightnessTolerance=" +
                    "${result.perceptualLightnessTolerance} " +
                    "requiredGridMatchRate=${result.requiredGridMatchRate}",
            )
            result.best.exposureEv
        }
    }

    private data class Size(val width: Int, val height: Int)

    private const val HDRNET_PAYLOAD_LOOKUP_TOLERANCE_EV = 0.001f

    private fun resolvePortraitPriority(
        snapshot: PortraitMaskSnapshot?,
        expectedRotationDegrees: Int,
    ): PortraitPrioritySource? {
        val mask = snapshot ?: return null
        val rotation = Math.floorMod(mask.previewToCaptureRotationDegrees, 360)
        if (rotation != 0 && rotation != 90 && rotation != 180 && rotation != 270) {
            PLog.w(TAG, "Portrait target ignored: unsupported capture rotation=$rotation")
            return null
        }
        if (rotation != expectedRotationDegrees) {
            PLog.w(
                TAG,
                "Portrait target ignored: mask rotation=$rotation does not match " +
                    "viewfinder rotation=$expectedRotationDegrees",
            )
            return null
        }
        val areaFraction = portraitAreaFraction(mask) ?: return null
        return PortraitPrioritySource(mask, areaFraction)
            .takeIf { areaFraction >= PORTRAIT_PRIORITY_MINIMUM_AREA_FRACTION }
    }

    private fun portraitAreaFraction(snapshot: PortraitMaskSnapshot): Float? {
        if (snapshot.confidence.isEmpty()) return null
        var sum = 0.0
        for (weight in snapshot.confidence) {
            if (!weight.isFinite() || weight !in 0f..1f) return null
            sum += weight.toDouble()
        }
        return (sum / snapshot.confidence.size.toDouble()).toFloat()
            .takeIf(Float::isFinite)
    }

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

    private fun sampleBitmap(
        bitmap: Bitmap,
        width: Int,
        height: Int,
        sourceBounds: Rect,
        mirrorHorizontally: Boolean,
        previewToCaptureRotationDegrees: Int,
    ): IntArray {
        val pixels = IntArray(width * height)
        val row = IntArray(bitmap.width)
        val mirrorVertically = mirrorHorizontally &&
            Math.floorMod(previewToCaptureRotationDegrees, 180) != 0
        for (y in 0 until height) {
            val sampledSourceY = (
                sourceBounds.top + (y + 0.5f) * sourceBounds.height() / height
                ).toInt().coerceIn(sourceBounds.top, sourceBounds.bottom - 1)
            val sourceY = if (mirrorVertically) {
                sourceBounds.bottom - 1 - (sampledSourceY - sourceBounds.top)
            } else {
                sampledSourceY
            }
            bitmap.getPixels(row, 0, bitmap.width, 0, sourceY, bitmap.width, 1)
            for (x in 0 until width) {
                val sampledSourceX = (
                    sourceBounds.left + (x + 0.5f) * sourceBounds.width() / width
                    ).toInt().coerceIn(sourceBounds.left, sourceBounds.right - 1)
                val sourceX = if (mirrorHorizontally && !mirrorVertically) {
                    sourceBounds.right - 1 - (sampledSourceX - sourceBounds.left)
                } else {
                    sampledSourceX
                }
                pixels[y * width + x] = row[sourceX]
            }
        }
        return pixels
    }

    private fun samplePortraitPriorityWeights(
        portraitPriority: PortraitPrioritySource,
        rotatedBitmapWidth: Int,
        rotatedBitmapHeight: Int,
        width: Int,
        height: Int,
        sourceBounds: Rect,
        mirrorHorizontally: Boolean,
        previewToCaptureRotationDegrees: Int,
    ): FloatArray {
        val snapshot = portraitPriority.snapshot
        val rotation = Math.floorMod(previewToCaptureRotationDegrees, 360)
        val mirrorVertically = mirrorHorizontally && rotation % 180 != 0
        val weights = FloatArray(width * height)
        for (y in 0 until height) {
            val sampledRotatedY = (
                sourceBounds.top + (y + 0.5f) * sourceBounds.height() / height
                ) / rotatedBitmapHeight.toFloat()
            val rotatedY = if (mirrorVertically) {
                1f - sampledRotatedY
            } else {
                sampledRotatedY
            }
            for (x in 0 until width) {
                val sampledRotatedX = (
                    sourceBounds.left + (x + 0.5f) * sourceBounds.width() / width
                    ) / rotatedBitmapWidth.toFloat()
                val rotatedX = if (mirrorHorizontally && !mirrorVertically) {
                    1f - sampledRotatedX
                } else {
                    sampledRotatedX
                }
                // BitmapUtils.rotate uses top-left coordinates and positive clockwise rotation.
                // Invert that transform to sample the detector's original-preview mask.
                val (previewX, previewY) = when (rotation) {
                    0 -> rotatedX to rotatedY
                    90 -> rotatedY to (1f - rotatedX)
                    180 -> (1f - rotatedX) to (1f - rotatedY)
                    270 -> (1f - rotatedY) to rotatedX
                    else -> error("Unsupported portrait target rotation: $rotation")
                }
                weights[y * width + x] = bilinearMaskSample(
                    values = snapshot.confidence,
                    width = snapshot.width,
                    height = snapshot.height,
                    normalizedX = previewX,
                    normalizedY = previewY,
                )
            }
        }
        return weights
    }

    private fun bilinearMaskSample(
        values: FloatArray,
        width: Int,
        height: Int,
        normalizedX: Float,
        normalizedY: Float,
    ): Float {
        val sourceX = (normalizedX.coerceIn(0f, 1f) * width - 0.5f)
            .coerceIn(0f, width - 1f)
        val sourceY = (normalizedY.coerceIn(0f, 1f) * height - 0.5f)
            .coerceIn(0f, height - 1f)
        val x0 = sourceX.toInt().coerceIn(0, width - 1)
        val y0 = sourceY.toInt().coerceIn(0, height - 1)
        val x1 = (x0 + 1).coerceAtMost(width - 1)
        val y1 = (y0 + 1).coerceAtMost(height - 1)
        val fractionX = sourceX - x0
        val fractionY = sourceY - y0
        val top = values[y0 * width + x0] * (1f - fractionX) +
            values[y0 * width + x1] * fractionX
        val bottom = values[y1 * width + x0] * (1f - fractionX) +
            values[y1 * width + x1] * fractionX
        return (top * (1f - fractionY) + bottom * fractionY).coerceIn(0f, 1f)
    }
}
