package com.hinnka.mycamera.ui.camera

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import androidx.compose.animation.animateColorAsState
import androidx.compose.animation.core.animateFloatAsState
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.withTransform
import androidx.compose.ui.platform.LocalContext
import com.hinnka.mycamera.camera.AspectRatio
import kotlin.math.abs
import kotlin.math.atan2

/**
 * 修正版水平仪
 * 1. 修复竖屏时线变成垂直的问题 (移除了多余的 +90 偏移)
 * 2. 完美支持横竖屏无缝切换
 */
@Composable
fun LevelIndicatorOverlay(
    aspectRatio: AspectRatio,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current

    var targetRotation by remember { mutableFloatStateOf(0f) }
    var isLevel by remember { mutableStateOf(false) }

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

    DisposableEffect(Unit) {
        val sensorManager = context.getSystemService(Context.SENSOR_SERVICE) as SensorManager
        val gravitySensor = sensorManager.getDefaultSensor(Sensor.TYPE_GRAVITY)

        val listener = object : SensorEventListener {
            override fun onSensorChanged(event: SensorEvent?) {
                event?.let {
                    val x = it.values[0]
                    val y = it.values[1]

                    // 计算重力矢量的角度
                    // atan2(x, y) 使得 0 度对应 Y 轴（竖直方向），符合手机传感器的布局
                    val angleDeg = Math.toDegrees(atan2(x.toDouble(), y.toDouble())).toFloat()

                    // 计算水平判定的偏差值
                    // 我们只关心当前角度离最近的轴（0, 90, 180, 270）差多少
                    val deviation = abs(angleDeg % 90)
                    val realDeviation = if (deviation > 45) 90 - deviation else deviation

                    // 阈值判定 (3度以内变绿)
                    isLevel = realDeviation < 3.0f

                    targetRotation = angleDeg
                }
            }

            override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {}
        }

        sensorManager.registerListener(listener, gravitySensor, SensorManager.SENSOR_DELAY_UI)
        onDispose { sensorManager.unregisterListener(listener) }
    }

    Canvas(modifier = modifier.fillMaxSize()) {
        val canvasWidth = size.width
        val canvasHeight = size.height

        // --- 比例计算区域 ---
        val containerRatio = 3f / 4f
        val targetRatio = aspectRatio.getValue(isLandscape = false)
        val (drawWidth, drawHeight, offsetX, offsetY) = if (targetRatio > containerRatio) {
            val h = canvasWidth / targetRatio
            Quadruple(canvasWidth, h, 0f, (canvasHeight - h) / 2f)
        } else {
            val w = canvasHeight * targetRatio
            Quadruple(w, canvasHeight, (canvasWidth - w) / 2f, 0f)
        }
        val centerX = offsetX + drawWidth / 2f
        val centerY = offsetY + drawHeight / 2f

        // --- 绘制逻辑 ---

        // 线条长度
        val lineLength = drawWidth * 0.4f
        val strokeWidth = 6f // 稍粗一点更清晰

        // 核心修正：
        // 之前是 -animatedRotation + 90f，导致竖屏多了90度变成垂直线。
        // 现在直接取反。因为 drawLine 默认就是横向(0度)画的。
        // 如果手机竖直拿 (角度约 0 或 180)，Canvas 旋转 0/180，线依然是横的 -> 正确。
        withTransform({
            rotate(degrees = -animatedRotation, pivot = Offset(centerX, centerY))
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

// 辅助类保持不变
data class Quadruple<out A, out B, out C, out D>(
    val first: A, val second: B, val third: C, val fourth: D
)