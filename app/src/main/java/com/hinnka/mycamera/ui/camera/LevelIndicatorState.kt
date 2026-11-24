package com.hinnka.mycamera.ui.camera

import kotlin.math.abs
import kotlin.math.atan2
import kotlin.math.exp
import kotlin.math.hypot

private const val HorizonLevelThresholdDegrees = 3f
private const val BubbleLevelThresholdDegrees = 1f
private const val BubbleEnterDegrees = 30f
private const val BubbleExitDegrees = 40f
private const val MinimumGravityMagnitude = 0.001
private const val AccelerometerFilterTimeConstantNanos = 150_000_000.0

internal enum class LevelIndicatorMode { HORIZON, BUBBLE }

internal data class LevelIndicatorReading(
    val mode: LevelIndicatorMode,
    val angleDegrees: Float,
    val flatTiltDegrees: Float,
    val bubbleX: Float,
    val bubbleY: Float,
    val isLevel: Boolean
)

internal class AccelerometerGravityEstimator {
    private val gravity = FloatArray(3)
    private var previousTimestampNanos: Long? = null

    // The caller consumes the reused gravity buffer before the next update.
    fun update(values: FloatArray, timestampNanos: Long): FloatArray? {
        if (!values.hasFiniteAxes()) return null
        val x = values[0].toDouble()
        val y = values[1].toDouble()
        val z = values[2].toDouble()
        if (x * x + y * y + z * z < MinimumGravityMagnitude * MinimumGravityMagnitude) {
            previousTimestampNanos = null
            return null
        }

        val previousTimestamp = previousTimestampNanos
        if (previousTimestamp == null) {
            values.copyInto(gravity, endIndex = gravity.size)
        } else {
            val elapsedNanos = timestampNanos - previousTimestamp
            if (elapsedNanos <= 0) return gravity
            // Use the sample interval so filter latency stays consistent across sensor rates.
            val weight = (1.0 - exp(-elapsedNanos / AccelerometerFilterTimeConstantNanos)).toFloat()
            for (axis in gravity.indices) {
                gravity[axis] += weight * (values[axis] - gravity[axis])
            }
        }
        previousTimestampNanos = timestampNanos
        return gravity
    }
}

/** Gravity uses device axes; the camera activity stays in portrait even when held sideways. */
internal fun calculateLevelIndicatorReading(
    values: FloatArray,
    previousMode: LevelIndicatorMode
): LevelIndicatorReading? {
    if (!values.hasFiniteAxes()) return null
    val x = values[0].toDouble()
    val y = values[1].toDouble()
    val z = values[2].toDouble()
    val planarGravity = hypot(x, y)
    // A zero-length gravity vector has no orientation and must not report level.
    if (hypot(planarGravity, z) < MinimumGravityMagnitude) return null

    // abs(z) treats both face-up and face-down as parallel to the ground.
    val flatTiltDegrees = Math.toDegrees(atan2(planarGravity, abs(z))).toFloat()
    val mode = when (previousMode) {
        LevelIndicatorMode.HORIZON ->
            if (flatTiltDegrees <= BubbleEnterDegrees) LevelIndicatorMode.BUBBLE else previousMode
        LevelIndicatorMode.BUBBLE ->
            if (flatTiltDegrees >= BubbleExitDegrees) LevelIndicatorMode.HORIZON else previousMode
    }
    val angleDegrees = Math.toDegrees(atan2(x, y)).toFloat()
    val deviation = abs(angleDegrees % 90f)
    val horizonDeviation = minOf(deviation, 90f - deviation)
    val bubbleDistance = (flatTiltDegrees / BubbleExitDegrees).coerceAtMost(1f)

    return LevelIndicatorReading(
        mode = mode,
        angleDegrees = angleDegrees,
        flatTiltDegrees = flatTiltDegrees,
        // A bubble moves toward the raised edge. Canvas Y points down, sensor Y points up.
        // Do not invert by z: the raised edge has the same screen direction on either face.
        bubbleX = if (planarGravity > 0.0) (x / planarGravity * bubbleDistance).toFloat() else 0f,
        bubbleY = if (planarGravity > 0.0) (-y / planarGravity * bubbleDistance).toFloat() else 0f,
        isLevel = when (mode) {
            LevelIndicatorMode.HORIZON -> horizonDeviation < HorizonLevelThresholdDegrees
            LevelIndicatorMode.BUBBLE -> flatTiltDegrees < BubbleLevelThresholdDegrees
        }
    )
}

private fun FloatArray.hasFiniteAxes(): Boolean = size >= 3 && (0..2).all { this[it].isFinite() }
