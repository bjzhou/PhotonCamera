package com.hinnka.mycamera.screencapture

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.Service
import android.content.Context
import android.content.Intent
import android.os.Build
import android.os.IBinder
import androidx.core.app.ServiceCompat
import androidx.core.app.NotificationCompat
import com.hinnka.mycamera.R
import com.hinnka.mycamera.utils.PLog

class ScreenCaptureForegroundService : Service() {

    private var hasStartedForeground = false

    override fun onCreate() {
        super.onCreate()
        createNotificationChannel()
        startProjectionForeground()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        startProjectionForeground()
        return START_NOT_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    private fun startProjectionForeground() {
        if (hasStartedForeground) return
        try {
            val notification = buildNotification()
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                ServiceCompat.startForeground(
                    this,
                    NOTIFICATION_ID,
                    notification,
                    android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PROJECTION
                )
            } else {
                startForeground(NOTIFICATION_ID, notification)
            }
            hasStartedForeground = true
            ScreenCaptureForegroundServiceState.markRunning(true)
            PLog.d(TAG, "Foreground service started")
        } catch (t: Throwable) {
            PLog.e(TAG, "Failed to enter foreground", t)
            ScreenCaptureForegroundServiceState.markRunning(false)
            stopSelf()
        }
    }

    override fun onDestroy() {
        ScreenCaptureForegroundServiceState.markRunning(false)
        super.onDestroy()
    }

    private fun buildNotification(): Notification {
        return NotificationCompat.Builder(this, CHANNEL_ID)
            .setSmallIcon(R.mipmap.ic_launcher)
            .setContentTitle(getString(R.string.screen_capture_test_notification_title))
            .setContentText(getString(R.string.screen_capture_test_notification_text))
            .setOngoing(true)
            .setCategory(NotificationCompat.CATEGORY_SERVICE)
            .setPriority(NotificationCompat.PRIORITY_LOW)
            .build()
    }

    private fun createNotificationChannel() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val manager = getSystemService(NotificationManager::class.java) ?: return
        val channel = NotificationChannel(
            CHANNEL_ID,
            getString(R.string.screen_capture_test_notification_channel),
            NotificationManager.IMPORTANCE_LOW
        )
        manager.createNotificationChannel(channel)
    }

    companion object {
        private const val CHANNEL_ID = "screen_capture_test"
        private const val NOTIFICATION_ID = 12041
        private const val TAG = "ScreenCaptureFGS"

        fun start(context: Context) {
            val intent = Intent(context, ScreenCaptureForegroundService::class.java)
            context.startService(intent)
        }

        fun stop(context: Context) {
            context.stopService(Intent(context, ScreenCaptureForegroundService::class.java))
        }
    }
}
