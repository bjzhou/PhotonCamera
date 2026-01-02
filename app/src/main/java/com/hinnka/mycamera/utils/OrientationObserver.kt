package com.hinnka.mycamera.utils

import android.content.Context
import android.view.OrientationEventListener
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue

object OrientationObserver {
    // 存储是否为横屏模式
    var isLandscape by mutableStateOf(false)
        private set

    // 存储旋转角度，用于UI旋转
    var rotationDegrees by mutableStateOf(0f)
        private set

    // 更新方向，只在横竖屏切换时才更新状态
    fun updateOrientation(orientation: Int) {
        // 右侧朝上（手机顺时针旋转90°）
        when (orientation) {
            in 45..135 -> {
                if (!isLandscape || rotationDegrees != 90f) {
                    isLandscape = true
                    rotationDegrees = 90f
                }
            }
            // 左侧朝上（手机逆时针旋转90°）
            in 225..315 -> {
                if (!isLandscape || rotationDegrees != 270f) {
                    isLandscape = true
                    rotationDegrees = 270f
                }
            }
            // 竖屏
            else -> {
                if (isLandscape) {
                    isLandscape = false
                    rotationDegrees = 0f
                }
            }
        }
    }

    fun observe(context: Context) {
        val orientationListener: OrientationEventListener = object : OrientationEventListener(context) {
            override fun onOrientationChanged(orientation: Int) {
                // 只在横竖屏切换时才更新状态，避免频繁重组
                updateOrientation(orientation)
            }
        }
        orientationListener.enable()
    }
}