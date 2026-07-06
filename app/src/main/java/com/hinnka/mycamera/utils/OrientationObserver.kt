package com.hinnka.mycamera.utils

import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.view.OrientationEventListener
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import kotlin.math.abs

object OrientationObserver {
    private const val TAG = "OrientationObserver"
    private const val FLAT_AXIS_THRESHOLD = 7.5f

    private var sensorManager: SensorManager? = null
    private var orientationListener: OrientationEventListener? = null
    private var gravityListener: SensorEventListener? = null
    private var isNearFlat by mutableStateOf(false)

    // 存储是否为横屏模式
    var isLandscape by mutableStateOf(false)
        private set

    // 存储旋转角度，用于UI旋转
    var rotationDegrees by mutableStateOf(0f)
        private set

    // 存储拍摄方向，包含反向竖屏，用于照片保存/处理
    var captureRotationDegrees by mutableStateOf(0f)
        private set

    // 更新方向，只在横竖屏切换时才更新状态
    fun updateOrientation(orientation: Int) {
        if (orientation == OrientationEventListener.ORIENTATION_UNKNOWN) {
            return
        }

        if (isNearFlat) {
            return
        }

        // 右侧朝上（手机顺时针旋转90°）
        when (orientation) {
            in 45..135 -> {
                captureRotationDegrees = 90f
                if (!isLandscape || rotationDegrees != 90f) {
                    isLandscape = true
                    rotationDegrees = 90f
                    PLog.d(TAG, "Orientation locked to landscape-right, orientation=$orientation")
                }
            }
            // 左侧朝上（手机逆时针旋转90°）
            in 225..315 -> {
                captureRotationDegrees = 270f
                if (!isLandscape || rotationDegrees != 270f) {
                    isLandscape = true
                    rotationDegrees = 270f
                    PLog.d(TAG, "Orientation locked to landscape-left, orientation=$orientation")
                }
            }
            // 反向竖屏
            in 135..225 -> {
                captureRotationDegrees = 180f
                if (isLandscape || rotationDegrees != 0f) {
                    isLandscape = false
                    rotationDegrees = 0f
                    PLog.d(TAG, "Orientation locked to reverse-portrait, orientation=$orientation")
                }
            }
            // 竖屏
            else -> {
                captureRotationDegrees = 0f
                if (isLandscape || rotationDegrees != 0f) {
                    isLandscape = false
                    rotationDegrees = 0f
                    PLog.d(TAG, "Orientation locked to portrait, orientation=$orientation")
                }
            }
        }
    }

    fun observe(context: Context) {
        if (orientationListener != null) {
            return
        }

        sensorManager = context.applicationContext.getSystemService(Context.SENSOR_SERVICE) as SensorManager

        gravityListener = object : SensorEventListener {
            override fun onSensorChanged(event: SensorEvent?) {
                val values = event?.values ?: return
                val nearFlat = abs(values[2]) > FLAT_AXIS_THRESHOLD
                if (nearFlat != isNearFlat) {
                    isNearFlat = nearFlat
//                    PLog.d(
//                        TAG,
//                        "Flat state changed: isNearFlat=$isNearFlat, x=${values[0]}, y=${values[1]}, z=${values[2]}"
//                    )
                }
            }

            override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) = Unit
        }

        sensorManager?.getDefaultSensor(Sensor.TYPE_GRAVITY)?.let { gravitySensor ->
            sensorManager?.registerListener(
                gravityListener,
                gravitySensor,
                SensorManager.SENSOR_DELAY_UI
            )
        }

        orientationListener = object : OrientationEventListener(context.applicationContext) {
            override fun onOrientationChanged(orientation: Int) {
                updateOrientation(orientation)
            }
        }
        orientationListener?.enable()
    }
}
