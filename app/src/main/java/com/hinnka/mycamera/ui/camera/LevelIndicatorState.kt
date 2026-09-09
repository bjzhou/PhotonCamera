package com.hinnka.mycamera.ui.camera

import kotlin.math.abs
import kotlin.math.atan2
import kotlin.math.hypot

private const val HorizonLevelThresholdDegrees = 3f
private const val BubbleLevelThresholdDegrees = 1f
private const val BubbleEnterDegrees = 30f
private const val BubbleExitDegrees = 40f

internal enum class LevelIndicatorMode { HORIZON, BUBBLE }

internal data class LevelIndicatorReading(
    val mode: LevelIndicatorMode,
    val angleDegrees: Float,
    val flatTiltDegrees: Float,
    val bubbleX: Float,
    val bubbleY: Float,
    val isLevel: Boolean
)

/** Gravity uses device axes; the camera activity stays in portrait even when held sideways. */
internal fun calculateLevelIndicatorReading(
    values: FloatArray,
    previousMode: LevelIndicatorMode
): LevelIndicatorReading? {
    if (values.size < 3 || (0..2).any { !values[it].isFinite() }) return null
    val x = values[0].toDouble()
    val y = values[1].toDouble()
    val z = values[2].toDouble()
    val planarGravity = hypot(x, y)
    // A zero-length gravity vector has no orientation and must not report level.
    if (hypot(planarGravity, z) < 0.001) return null

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
