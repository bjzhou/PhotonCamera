package com.hinnka.mycamera.camera

import kotlin.math.max
import kotlin.math.min
import kotlin.math.sqrt

data class GyroExposureWindow(
    val startTimestampNs: Long,
    val endTimestampNs: Long,
    val sampleCount: Int,
    val integratedRotationRad: FloatArray,
    val angularEnergy: Float,
    val peakAngularVelocity: Float,
    val jerkEnergy: Float,
    val coverageRatio: Float,
) {
    companion object {
        fun unavailable(startTimestampNs: Long, endTimestampNs: Long) = GyroExposureWindow(
            startTimestampNs = startTimestampNs,
            endTimestampNs = endTimestampNs,
            sampleCount = 0,
            integratedRotationRad = FloatArray(3),
            angularEnergy = 0f,
            peakAngularVelocity = 0f,
            jerkEnergy = 0f,
            coverageRatio = 0f,
        )
    }
}

internal data class GyroSample(
    val timestampNs: Long,
    val x: Float,
    val y: Float,
    val z: Float,
)

internal object GyroExposureWindowIntegrator {
    fun integrate(
        samples: List<GyroSample>,
        startTimestampNs: Long,
        endTimestampNs: Long,
    ): GyroExposureWindow {
        if (endTimestampNs <= startTimestampNs || samples.size < 2) {
            return GyroExposureWindow.unavailable(startTimestampNs, endTimestampNs)
        }

        val ordered = samples
            .asSequence()
            .filter { it.timestampNs >= 0L }
            .sortedBy { it.timestampNs }
            .distinctBy { it.timestampNs }
            .toList()
        if (ordered.size < 2) {
            return GyroExposureWindow.unavailable(startTimestampNs, endTimestampNs)
        }

        val coveredStart = max(startTimestampNs, ordered.first().timestampNs)
        val coveredEnd = min(endTimestampNs, ordered.last().timestampNs)
        val requestedDurationNs = endTimestampNs - startTimestampNs
        val coveredDurationNs = (coveredEnd - coveredStart).coerceAtLeast(0L)
        val coverage = (coveredDurationNs.toDouble() / requestedDurationNs.toDouble())
            .coerceIn(0.0, 1.0)
            .toFloat()
        if (coveredDurationNs <= 0L) {
            return GyroExposureWindow.unavailable(startTimestampNs, endTimestampNs)
        }

        val clipped = ArrayList<GyroSample>()
        interpolateAt(ordered, coveredStart)?.let(clipped::add)
        ordered.forEach { sample ->
            if (sample.timestampNs > coveredStart && sample.timestampNs < coveredEnd) {
                clipped.add(sample)
            }
        }
        interpolateAt(ordered, coveredEnd)?.let { sample ->
            if (clipped.lastOrNull()?.timestampNs != sample.timestampNs) clipped.add(sample)
        }
        if (clipped.size < 2) {
            return GyroExposureWindow.unavailable(startTimestampNs, endTimestampNs).copy(
                coverageRatio = coverage,
            )
        }

        val rotation = DoubleArray(3)
        var energyIntegral = 0.0
        var jerkIntegral = 0.0
        var peakVelocity = 0.0
        for (index in 0 until clipped.lastIndex) {
            val a = clipped[index]
            val b = clipped[index + 1]
            val dtSeconds = (b.timestampNs - a.timestampNs).toDouble() * NS_TO_SECONDS
            if (dtSeconds <= 0.0) continue

            rotation[0] += 0.5 * (a.x + b.x) * dtSeconds
            rotation[1] += 0.5 * (a.y + b.y) * dtSeconds
            rotation[2] += 0.5 * (a.z + b.z) * dtSeconds

            val magnitudeA2 = magnitudeSquared(a)
            val magnitudeB2 = magnitudeSquared(b)
            energyIntegral += 0.5 * (magnitudeA2 + magnitudeB2) * dtSeconds
            peakVelocity = max(peakVelocity, sqrt(max(magnitudeA2, magnitudeB2)))

            val dx = (b.x - a.x).toDouble() / dtSeconds
            val dy = (b.y - a.y).toDouble() / dtSeconds
            val dz = (b.z - a.z).toDouble() / dtSeconds
            jerkIntegral += (dx * dx + dy * dy + dz * dz) * dtSeconds
        }

        val durationSeconds = coveredDurationNs.toDouble() * NS_TO_SECONDS
        return GyroExposureWindow(
            startTimestampNs = startTimestampNs,
            endTimestampNs = endTimestampNs,
            sampleCount = clipped.size,
            integratedRotationRad = FloatArray(3) { rotation[it].toFloat() },
            angularEnergy = (energyIntegral / durationSeconds).toFloat(),
            peakAngularVelocity = peakVelocity.toFloat(),
            jerkEnergy = (jerkIntegral / durationSeconds).toFloat(),
            coverageRatio = coverage,
        )
    }

    private fun interpolateAt(samples: List<GyroSample>, timestampNs: Long): GyroSample? {
        if (timestampNs < samples.first().timestampNs || timestampNs > samples.last().timestampNs) return null
        val exact = samples.binarySearchBy(timestampNs) { it.timestampNs }
        if (exact >= 0) return samples[exact]
        val insertionPoint = -exact - 1
        if (insertionPoint <= 0 || insertionPoint >= samples.size) return null
        val before = samples[insertionPoint - 1]
        val after = samples[insertionPoint]
        val span = after.timestampNs - before.timestampNs
        if (span <= 0L) return before.copy(timestampNs = timestampNs)
        val fraction = (timestampNs - before.timestampNs).toDouble() / span.toDouble()
        return GyroSample(
            timestampNs = timestampNs,
            x = lerp(before.x, after.x, fraction),
            y = lerp(before.y, after.y, fraction),
            z = lerp(before.z, after.z, fraction),
        )
    }

    private fun magnitudeSquared(sample: GyroSample): Double {
        return sample.x.toDouble() * sample.x +
            sample.y.toDouble() * sample.y +
            sample.z.toDouble() * sample.z
    }

    private fun lerp(a: Float, b: Float, fraction: Double): Float {
        return (a + (b - a) * fraction).toFloat()
    }

    private const val NS_TO_SECONDS = 1.0e-9
}
