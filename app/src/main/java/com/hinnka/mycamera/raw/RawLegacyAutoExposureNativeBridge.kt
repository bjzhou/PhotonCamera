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
}
