package com.hinnka.mycamera.raw

/** Lifecycle wrapper for the robust native solver derived from PhotonCamera 1.27.1. */
internal object RawLegacyAutoExposureNativeBridge {
    init {
        System.loadLibrary("my-native-lib")
    }

    data class SingleExposureResult(
        val exposureEv: Float,
        val matchRate: Float,
        val meanAbsoluteErrorEv: Float,
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

        fun solveSingleGridExposure(
            displayLinearLumas: FloatArray,
            columns: Int,
            rows: Int,
            minimumExposureEv: Float,
            maximumExposureEv: Float,
        ): SingleExposureResult? {
            check(handle != 0L) { "Native exposure solver is closed" }
            if (columns <= 0 || rows <= 0 || displayLinearLumas.size != columns * rows ||
                !minimumExposureEv.isFinite() || !maximumExposureEv.isFinite() ||
                minimumExposureEv > maximumExposureEv
            ) {
                return null
            }
            val values = nativeSolveSingleGridExposure(
                handle = handle,
                candidateDisplayLinearLumas = displayLinearLumas,
                columns = columns,
                rows = rows,
                minimumExposureEv = minimumExposureEv,
                maximumExposureEv = maximumExposureEv,
            )
                ?: return null
            if (values.size != SINGLE_EXPOSURE_RESULT_VALUE_COUNT) return null
            return SingleExposureResult(
                exposureEv = values[0],
                matchRate = values[1],
                meanAbsoluteErrorEv = values[2],
            ).takeIf {
                it.exposureEv.isFinite() && it.matchRate.isFinite() &&
                    it.meanAbsoluteErrorEv.isFinite()
            }
        }

        fun configureExposureBounds(minimumEv: Float, maximumEv: Float): Boolean {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeConfigureExposureBounds(handle, minimumEv, maximumEv)
        }

        fun resultExposureEv(): Float? {
            check(handle != 0L) { "Native exposure solver is closed" }
            return nativeGetResultExposureEv(handle).takeIf { it.isFinite() }
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
                    portraitPriorityWeights = reference.portraitPriorityWeights,
                    width = reference.width,
                    height = reference.height,
                )
                return handle.takeIf { it != 0L }?.let(::Solver)
            }
        }
    }

    private external fun nativeCreate(
        referencePixels: IntArray,
        portraitPriorityWeights: FloatArray?,
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

    private external fun nativeSolveSingleGridExposure(
        handle: Long,
        candidateDisplayLinearLumas: FloatArray,
        columns: Int,
        rows: Int,
        minimumExposureEv: Float,
        maximumExposureEv: Float,
    ): FloatArray?

    private external fun nativeConfigureExposureBounds(
        handle: Long,
        minimumEv: Float,
        maximumEv: Float,
    ): Boolean

    private external fun nativeGetResultExposureEv(handle: Long): Float
    private external fun nativeDestroy(handle: Long)

    private const val SINGLE_EXPOSURE_RESULT_VALUE_COUNT = 3
}
