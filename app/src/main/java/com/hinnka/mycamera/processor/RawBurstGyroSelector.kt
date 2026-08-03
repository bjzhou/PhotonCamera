package com.hinnka.mycamera.processor

import com.hinnka.mycamera.camera.GyroExposureWindow
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.sqrt

data class RawBurstGyroSelection(
    val orderedAcceptedIndices: IntArray,
    val rejectedIndices: IntArray,
    val blurRiskByIndex: FloatArray,
    val referenceOriginalIndex: Int,
)

data class RawBurstGyroFrameSample(
    val sensorTimestampNs: Long,
    val exposureTimeNs: Long,
    val gyroWindow: GyroExposureWindow?,
)

object RawBurstGyroSelector {
    private const val MIN_GYRO_COVERAGE = 0.80f
    private const val MIN_RETAINED_FRAMES = 3
    private const val MAX_REJECTION_FRACTION = 0.25f
    private const val ABSOLUTE_OUTLIER_FLOOR_RAD = 0.0015f

    fun select(frames: List<RawStackFrame>): RawBurstGyroSelection {
        return selectMetadata(
            frames.map {
                RawBurstGyroFrameSample(
                    sensorTimestampNs = it.sensorTimestampNs,
                    exposureTimeNs = it.exposureTimeNs,
                    gyroWindow = it.gyroWindow,
                )
            }
        )
    }

    fun selectMetadata(frames: List<RawBurstGyroFrameSample>): RawBurstGyroSelection {
        if (frames.isEmpty()) {
            return RawBurstGyroSelection(IntArray(0), IntArray(0), FloatArray(0), -1)
        }

        val risks = FloatArray(frames.size) { index -> blurRisk(frames[index]) }
        val reliableIndices = frames.indices.filter { risks[it].isFinite() }
        if (reliableIndices.size < 2 || frames.size <= MIN_RETAINED_FRAMES) {
            val reference = reliableIndices.minByOrNull { risks[it] } ?: 0
            return RawBurstGyroSelection(
                orderedAcceptedIndices = orderAccepted(frames, frames.indices.toList(), risks, reference),
                rejectedIndices = IntArray(0),
                blurRiskByIndex = risks,
                referenceOriginalIndex = reference,
            )
        }

        val reliableRisks = reliableIndices.map { risks[it] }.sorted()
        val median = median(reliableRisks)
        val deviations = reliableRisks.map { kotlin.math.abs(it - median) }.sorted()
        val mad = median(deviations)
        val threshold = max(
            ABSOLUTE_OUTLIER_FLOOR_RAD,
            max(median * 2.5f, median + 3.0f * 1.4826f * mad),
        )
        val maxRejected = minOf(
            frames.size - MIN_RETAINED_FRAMES,
            ceil(frames.size * MAX_REJECTION_FRACTION).toInt(),
        ).coerceAtLeast(0)
        val rejected = reliableIndices
            .asSequence()
            .filter { risks[it] > threshold }
            .sortedByDescending { risks[it] }
            .take(maxRejected)
            .toSet()
        val accepted = frames.indices.filterNot(rejected::contains)
        val reference = accepted
            .asSequence()
            .filter { risks[it].isFinite() }
            .minByOrNull { risks[it] }
            ?: accepted.first()

        return RawBurstGyroSelection(
            orderedAcceptedIndices = orderAccepted(frames, accepted, risks, reference),
            rejectedIndices = rejected.sorted().toIntArray(),
            blurRiskByIndex = risks,
            referenceOriginalIndex = reference,
        )
    }

    private fun blurRisk(frame: RawBurstGyroFrameSample): Float {
        val window = frame.gyroWindow ?: return Float.NaN
        if (window.coverageRatio < MIN_GYRO_COVERAGE || window.sampleCount < 2) return Float.NaN
        val rotation = window.integratedRotationRad
        if (rotation.size < 3) return Float.NaN
        val integratedMagnitude = sqrt(
            rotation[0] * rotation[0] + rotation[1] * rotation[1] + rotation[2] * rotation[2]
        )
        val exposureSeconds = frame.exposureTimeNs.coerceAtLeast(0L) * 1.0e-9f
        val energyEquivalent = sqrt(window.angularEnergy.coerceAtLeast(0f)) * exposureSeconds
        val peakEquivalent = window.peakAngularVelocity.coerceAtLeast(0f) * exposureSeconds
        return integratedMagnitude + 0.20f * energyEquivalent + 0.10f * peakEquivalent
    }

    private fun orderAccepted(
        frames: List<RawBurstGyroFrameSample>,
        accepted: List<Int>,
        risks: FloatArray,
        reference: Int,
    ): IntArray {
        val remainder = accepted
            .asSequence()
            .filter { it != reference }
            .sortedWith(
                compareBy<Int> { if (risks[it].isFinite()) 0 else 1 }
                    .thenBy { if (risks[it].isFinite()) risks[it] else Float.POSITIVE_INFINITY }
                    .thenBy { frames[it].sensorTimestampNs }
            )
            .toList()
        return intArrayOf(reference, *remainder.toIntArray())
    }

    private fun median(values: List<Float>): Float {
        if (values.isEmpty()) return 0f
        val middle = values.size / 2
        return if (values.size % 2 == 0) {
            (values[middle - 1] + values[middle]) * 0.5f
        } else {
            values[middle]
        }
    }
}
