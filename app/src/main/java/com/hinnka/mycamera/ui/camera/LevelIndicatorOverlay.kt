package com.hinnka.mycamera.ui.camera

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.animateOffsetAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.drawscope.withTransform
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.hinnka.mycamera.utils.PLog

private const val TAG = "LevelIndicatorOverlay"
private const val DefaultLevelAspectRatio = 3f / 4f

/**
 * Upright framing uses the horizon line; face-up/down framing uses a two-axis bubble.
 */
@Composable
fun LevelIndicatorOverlay(
    aspectRatio: Float,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current

    var targetRotation by remember { mutableFloatStateOf(0f) }
    var sensorReading by remember { mutableStateOf<LevelIndicatorReading?>(null) }
    val isLevel = sensorReading?.isLevel == true

    val animatedBubbleOffset by animateOffsetAsState(
        targetValue = sensorReading?.let { Offset(it.bubbleX, it.bubbleY) } ?: Offset.Zero,
        animationSpec = tween(durationMillis = 150),
        label = "bubbleOffset"
    )

    // 动画平滑
    val animatedRotation by animateFloatAsState(
        targetValue = targetRotation,
        animationSpec = tween(durationMillis = 200),
        label = "rotation"
    )

    val lineColor by animateColorAsState(
        targetValue = if (isLevel) Color(0xFF00FF00) else Color.White.copy(alpha = 0.8f),
        animationSpec = tween(durationMillis = 300),
        label = "color"
    )

    DisposableEffect(context) {
        val sensorManager = context.getSystemService(Context.SENSOR_SERVICE) as SensorManager
        val gravitySensor = sensorManager.getDefaultSensor(Sensor.TYPE_GRAVITY)
        var invalidSensorReadingLogged = false
        var previousMode = LevelIndicatorMode.HORIZON

        val listener = object : SensorEventListener {
            override fun onSensorChanged(event: SensorEvent?) {
                val reading = event?.values?.let {
                    calculateLevelIndicatorReading(it, previousMode)
                }
                if (reading == null) {
                    if (!invalidSensorReadingLogged) {
                        invalidSensorReadingLogged = true
                        PLog.w(TAG, "Ignored invalid gravity sensor reading: ${event.describeLevelSensorValues()}")
                    }
                    sensorReading = null
                    return
                }

                if (reading.mode != previousMode) {
                    PLog.d(TAG, "Level mode: $previousMode -> ${reading.mode}, flatTilt=${reading.flatTiltDegrees}")
                }
                previousMode = reading.mode
                sensorReading = reading
                if (reading.mode == LevelIndicatorMode.HORIZON) {
                    targetRotation = reading.angleDegrees
                }
            }

            override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {}
        }

        gravitySensor?.let {
            sensorManager.registerListener(listener, it, SensorManager.SENSOR_DELAY_UI)
        } ?: PLog.w(TAG, "Gravity sensor unavailable; level indicator is disabled")
        onDispose { sensorManager.unregisterListener(listener) }
    }

    Canvas(modifier = modifier.fillMaxSize()) {
        val reading = sensorReading ?: return@Canvas
        val canvasWidth = size.width
        val canvasHeight = size.height

        // --- 比例计算区域 ---
        val targetRatio = aspectRatio.validLevelAspectRatioOrDefault()
        val drawWidth = minOf(canvasWidth, canvasHeight * targetRatio)
        val drawHeight = minOf(canvasHeight, canvasWidth / targetRatio)
        val centerX = canvasWidth / 2f
        val centerY = canvasHeight / 2f

        if (reading.mode == LevelIndicatorMode.BUBBLE) {
            val center = Offset(centerX, centerY)
            val travelRadius = minOf(48.dp.toPx(), minOf(drawWidth, drawHeight) * 0.2f)
            // The fixed ring marks level; the filled dot shows tilt on both screen axes.
            drawCircle(
                color = lineColor,
                radius = 7.dp.toPx(),
                center = center,
                style = Stroke(width = 1.dp.toPx())
            )
            drawCircle(
                color = lineColor,
                radius = 4.dp.toPx(),
                center = center + animatedBubbleOffset * travelRadius
            )
            return@Canvas
        }

        // --- 绘制逻辑 ---

        // 线条长度
        val lineLength = drawWidth * 0.4f
        val strokeWidth = 6f // 稍粗一点更清晰

        // 传感器角度已经表示设备当前倾斜方向，直接用于 Canvas 旋转，保持水平仪运动方向和设备一致。
        withTransform({
            rotate(degrees = animatedRotation, pivot = Offset(centerX, centerY))
        }) {
            // 绘制主水平线
            drawLine(
                color = lineColor,
                start = Offset(centerX - lineLength / 2f, centerY),
                end = Offset(centerX + lineLength / 2f, centerY),
                strokeWidth = strokeWidth,
                cap = StrokeCap.Round
            )

            // 绘制中心点 (仅在水平对齐时显示，增加确认感)
            if (isLevel) {
                drawCircle(
                    color = lineColor,
                    radius = 8f,
                    center = Offset(centerX, centerY)
                )
            }
        }

        // 未水平时的固定参考点（淡淡的白色），帮助用户找正
        if (!isLevel) {
            drawCircle(
                color = Color.White.copy(alpha = 0.3f),
                radius = 4f,
                center = Offset(centerX, centerY)
            )

            // 左右两侧的参考短线（不动）
            val gap = lineLength / 2f + 15f
            val markerLen = 15f
            // 左参考
            drawLine(
                color = Color.White.copy(alpha = 0.3f),
                start = Offset(centerX - gap - markerLen, centerY),
                end = Offset(centerX - gap, centerY),
                strokeWidth = 4f,
                cap = StrokeCap.Round
            )
            // 右参考
            drawLine(
                color = Color.White.copy(alpha = 0.3f),
                start = Offset(centerX + gap, centerY),
                end = Offset(centerX + gap + markerLen, centerY),
                strokeWidth = 4f,
                cap = StrokeCap.Round
            )
        }
    }
}

private fun SensorEvent?.describeLevelSensorValues(): String {
    val x = this?.values?.getOrNull(0)
    val y = this?.values?.getOrNull(1)
    val z = this?.values?.getOrNull(2)
    return "x=$x, y=$y, z=$z"
}

private fun Float.validLevelAspectRatioOrDefault(): Float {
    return takeIf { it.isFiniteValue() && it > 0f } ?: DefaultLevelAspectRatio
}

private fun Float.isFiniteValue(): Boolean {
    return !isNaN() && !isInfinite()
}
