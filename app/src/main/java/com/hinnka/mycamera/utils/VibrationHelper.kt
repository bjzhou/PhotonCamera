package com.hinnka.mycamera.utils

import android.content.Context
import android.os.Build
import android.os.VibrationEffect
import android.os.Vibrator
import android.os.VibratorManager

/**
 * 震动辅助类
 *
 * 负责在拍照时提供触觉反馈
 * 使用 Vibrator 实现震动效果
 */
class VibrationHelper(private val context: Context) {

    companion object {
        private const val TAG = "VibrationHelper"
        private const val VIBRATION_DURATION_MS = 50L // 震动持续时间（毫秒）
    }

    private val vibrator: Vibrator? by lazy {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                val vibratorManager = context.getSystemService(Context.VIBRATOR_MANAGER_SERVICE) as? VibratorManager
                vibratorManager?.defaultVibrator
            } else {
                @Suppress("DEPRECATION")
                context.getSystemService(Context.VIBRATOR_SERVICE) as? Vibrator
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to get vibrator service", e)
            null
        }
    }

    /**
     * 执行震动反馈
     */
    fun vibrate() {
        try {
            vibrator?.let { vib ->
                if (!vib.hasVibrator()) {
                    PLog.w(TAG, "Device does not have vibrator")
                    return
                }

                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    // Android 8.0 及以上使用 VibrationEffect
                    val effect = VibrationEffect.createOneShot(
                        VIBRATION_DURATION_MS,
                        VibrationEffect.DEFAULT_AMPLITUDE
                    )
                    vib.vibrate(effect)
                } else {
                    // Android 8.0 以下使用旧 API
                    @Suppress("DEPRECATION")
                    vib.vibrate(VIBRATION_DURATION_MS)
                }

                PLog.d(TAG, "Vibration triggered")
            } ?: run {
                PLog.w(TAG, "Vibrator not available")
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to vibrate", e)
        }
    }

    /**
     * 取消震动
     */
    fun cancel() {
        try {
            vibrator?.cancel()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to cancel vibration", e)
        }
    }
}
