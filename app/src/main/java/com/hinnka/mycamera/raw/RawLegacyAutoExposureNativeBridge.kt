package com.hinnka.mycamera.raw

import kotlin.math.roundToInt

/** Lifecycle wrapper for the robust native solver derived from PhotonCamera 1.27.1. */
internal object RawLegacyAutoExposureNativeBridge {
    init {
        System.loadLibrary("my-native-lib")
    }

    data class Sample(
        val exposureEv: Float,
        val matchedCellCount: Int,
        val validCellCount: Int,
        val comparedCellCount: Int,
        val matchRate: Float,
        val meanAbsoluteLog2Ratio: Float,
        val medianLog2Ratio: Float,
        val robustLog2Loss: Float,
        val referenceWeightSum: Float,
        val recommendedExposureCorrectionEv: Float,
    )

    data class Result(
        val best: Sample,
        val evaluatedSampleCount: Int,
        val excludedShadowCellCount: Int,
        val excludedHighlightCellCount: Int,
        val shadowWeightZeroLinear: Float,
        val highlightWeightZeroLinear: Float,
        val huberDeltaEv: Float,
    )

    data class HdrNetCurveSample(
        val matchedCellCount: Int,
        val validCellCount: Int,
        val comparedCellCount: Int,
        val matchRate: Float,
        val meanAbsoluteLog2Ratio: Float,
        val medianLog2Ratio: Float,
        val robustLog2Loss: Float,
        val referenceWeightSum: Float,
        val recommendedExposureCorrectionEv: Float,
        val centerErrorEv: Float,
        val spanErrorEv: Float,
        val curveSlopeError: Float,
        val referenceP20Ev: Float,
        val referenceP50Ev: Float,
        val referenceP80Ev: Float,
        val curveFitCellCount: Int,
    ) {
        val referenceSpanEv: Float
            get() = referenceP80Ev - referenceP20Ev
    }

    enum class HdrNetProbeAxis {
        BASE,
        SHORT_JACOBIAN,
        RATIO_JACOBIAN,
        JOINT_NEWTON,
        FALLBACK_SHORT,
    }

    data class HdrNetParameters(
        val shortEv: Float,
        val hdrRatioEv: Float,
        val axis: HdrNetProbeAxis,
    )

    data class HdrNetResult(
        val shortEv: Float,
        val hdrRatioEv: Float,
        val sample: HdrNetCurveSample,
        val evaluatedCandidateCount: Int,
        val converged: Boolean,
        val usedOneDimensionalFallback: Boolean,
        val jacobianNormalizedDeterminant: Float,
    )

    class Solver private constructor(
        private var handle: Long,
    ) : AutoCloseable {
        fun nextExposureEv(): Float? {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeNextExposureEv(handle).takeIf { it.isFinite() }
        }

        fun submitCandidate(exposureEv: Float, frame: RawLegacyExposurePreviewFrame): Boolean {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeSubmitCandidate(
                handle = handle,
                exposureEv = exposureEv,
                candidatePixels = frame.argbPixels,
                width = frame.width,
                height = frame.height,
            )
        }

        fun submitCandidate(
            exposureEv: Float,
            displayLinearLumas: FloatArray,
            columns: Int,
            rows: Int,
        ): Boolean {
            check(handle != 0L) { "Native exposure solver is closed" }
            if (columns <= 0 || rows <= 0 || displayLinearLumas.size != columns * rows) {
                return false
            }
            return nativeSubmitGridCandidate(
                handle = handle,
                exposureEv = exposureEv,
                candidateDisplayLinearLumas = displayLinearLumas,
                columns = columns,
                rows = rows,
            )
        }

        fun startHdrNetSolve(
            initialHdrRatio: Float,
            maximumHdrRatio: Float,
        ): Boolean {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeStartHdrNetSolve(handle, initialHdrRatio, maximumHdrRatio)
        }

        fun nextHdrNetParameters(): HdrNetParameters? {
            check(handle != 0L) { "Native exposure solver is closed" }
            val values = nativeNextHdrNetParameters(handle) ?: return null
            if (values.size != HDRNET_PARAMETER_VALUE_COUNT) return null
            val axis = HdrNetProbeAxis.entries.getOrNull(values[2].roundToInt())
                ?: return null
            return HdrNetParameters(
                shortEv = values[0],
                hdrRatioEv = values[1],
                axis = axis,
            ).takeIf { it.shortEv.isFinite() && it.hdrRatioEv.isFinite() }
        }

        fun submitHdrNetCandidate(
            parameters: HdrNetParameters,
            displayLinearLumas: FloatArray,
            columns: Int,
            rows: Int,
        ): HdrNetCurveSample? {
            check(handle != 0L) { "Native exposure solver is closed" }
            if (columns <= 0 || rows <= 0 || displayLinearLumas.size != columns * rows) {
                return null
            }
            val values = nativeSubmitHdrNetGridCandidate(
                handle = handle,
                shortEv = parameters.shortEv,
                hdrRatioEv = parameters.hdrRatioEv,
                candidateDisplayLinearLumas = displayLinearLumas,
                columns = columns,
                rows = rows,
            ) ?: return null
            return values.toHdrNetCurveSample()
        }

        fun hdrNetResult(): HdrNetResult? {
            check(handle != 0L) { "Native exposure solver is closed" }
            val values = nativeGetHdrNetResult(handle) ?: return null
            if (values.size != HDRNET_RESULT_VALUE_COUNT) return null
            return HdrNetResult(
                shortEv = values[0],
                hdrRatioEv = values[1],
                sample = values.toHdrNetCurveSample(offset = 2) ?: return null,
                evaluatedCandidateCount = values[18].roundToInt(),
                converged = values[19] != 0f,
                usedOneDimensionalFallback = values[20] != 0f,
                jacobianNormalizedDeterminant = values[21],
            )
        }

        fun configureExposureBounds(minimumEv: Float, maximumEv: Float): Boolean {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeConfigureExposureBounds(handle, minimumEv, maximumEv)
        }

        fun hasConverged(): Boolean {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeHasConverged(handle)
        }

        fun lastSample(): Sample? {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeGetLastSample(handle)?.toSample()
        }

        fun result(): Result? {
            check(handle != 0L) { "Native exposure solver is closed" }
            val values = nativeGetResult(handle) ?: return null
            if (values.size != RESULT_VALUE_COUNT) return null
            return Result(
                best = values.toSample() ?: return null,
                evaluatedSampleCount = values[10].roundToInt(),
                excludedShadowCellCount = values[11].roundToInt(),
                excludedHighlightCellCount = values[12].roundToInt(),
                shadowWeightZeroLinear = values[13],
                highlightWeightZeroLinear = values[14],
                huberDeltaEv = values[15],
            )
        }

        override fun close() {
            val nativeHandle = handle
            if (nativeHandle == 0L) return
            handle = 0L
            nativeDestroy(nativeHandle)
        }

        companion object {
            fun create(reference: RawLegacyExposurePreviewFrame): Solver? {
                val handle = nativeCreate(
                    referencePixels = reference.argbPixels,
                    width = reference.width,
                    height = reference.height,
                )
                return handle.takeIf { it != 0L }?.let(::Solver)
            }
        }
    }

    private fun FloatArray.toSample(): Sample? {
        if (size < SAMPLE_VALUE_COUNT) return null
        return Sample(
            exposureEv = this[0],
            matchedCellCount = this[1].roundToInt(),
            validCellCount = this[2].roundToInt(),
            comparedCellCount = this[3].roundToInt(),
            matchRate = this[4],
            meanAbsoluteLog2Ratio = this[5],
            medianLog2Ratio = this[6],
            robustLog2Loss = this[7],
            referenceWeightSum = this[8],
            recommendedExposureCorrectionEv = this[9],
        )
    }

    private fun FloatArray.toHdrNetCurveSample(offset: Int = 0): HdrNetCurveSample? {
        if (size < offset + HDRNET_CURVE_SAMPLE_VALUE_COUNT) return null
        return HdrNetCurveSample(
            matchedCellCount = this[offset].roundToInt(),
            validCellCount = this[offset + 1].roundToInt(),
            comparedCellCount = this[offset + 2].roundToInt(),
            matchRate = this[offset + 3],
            meanAbsoluteLog2Ratio = this[offset + 4],
            medianLog2Ratio = this[offset + 5],
            robustLog2Loss = this[offset + 6],
            referenceWeightSum = this[offset + 7],
            recommendedExposureCorrectionEv = this[offset + 8],
            centerErrorEv = this[offset + 9],
            spanErrorEv = this[offset + 10],
            curveSlopeError = this[offset + 11],
            referenceP20Ev = this[offset + 12],
            referenceP50Ev = this[offset + 13],
            referenceP80Ev = this[offset + 14],
            curveFitCellCount = this[offset + 15].roundToInt(),
        ).takeIf {
            it.matchRate.isFinite() &&
                it.meanAbsoluteLog2Ratio.isFinite() &&
                it.medianLog2Ratio.isFinite() &&
                it.robustLog2Loss.isFinite() &&
                it.referenceWeightSum.isFinite() &&
                it.recommendedExposureCorrectionEv.isFinite()
        }
    }

    private external fun nativeCreate(
        referencePixels: IntArray,
        width: Int,
        height: Int,
    ): Long

    private external fun nativeNextExposureEv(handle: Long): Float

    private external fun nativeSubmitCandidate(
        handle: Long,
        exposureEv: Float,
        candidatePixels: IntArray,
        width: Int,
        height: Int,
    ): Boolean

    private external fun nativeSubmitGridCandidate(
        handle: Long,
        exposureEv: Float,
        candidateDisplayLinearLumas: FloatArray,
        columns: Int,
        rows: Int,
    ): Boolean

    private external fun nativeStartHdrNetSolve(
        handle: Long,
        initialHdrRatio: Float,
        maximumHdrRatio: Float,
    ): Boolean

    private external fun nativeNextHdrNetParameters(handle: Long): FloatArray?

    private external fun nativeSubmitHdrNetGridCandidate(
        handle: Long,
        shortEv: Float,
        hdrRatioEv: Float,
        candidateDisplayLinearLumas: FloatArray,
        columns: Int,
        rows: Int,
    ): FloatArray?

    private external fun nativeGetHdrNetResult(handle: Long): FloatArray?

    private external fun nativeConfigureExposureBounds(
        handle: Long,
        minimumEv: Float,
        maximumEv: Float,
    ): Boolean

    private external fun nativeHasConverged(handle: Long): Boolean

    private external fun nativeGetLastSample(handle: Long): FloatArray?
    private external fun nativeGetResult(handle: Long): FloatArray?
    private external fun nativeDestroy(handle: Long)

    private const val SAMPLE_VALUE_COUNT = 10
    private const val RESULT_VALUE_COUNT = 16
    private const val HDRNET_CURVE_SAMPLE_VALUE_COUNT = 16
    private const val HDRNET_PARAMETER_VALUE_COUNT = 3
    private const val HDRNET_RESULT_VALUE_COUNT = 22
}
