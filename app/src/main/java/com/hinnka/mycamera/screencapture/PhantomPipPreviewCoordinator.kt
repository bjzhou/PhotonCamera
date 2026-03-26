package com.hinnka.mycamera.screencapture

import android.content.Context
import android.content.Intent

object PhantomPipPreviewCoordinator {
    const val ACTION_STOP_PHANTOM_PIP_PREVIEW = "com.hinnka.mycamera.action.STOP_PHANTOM_PIP_PREVIEW"

    fun createStartIntent(context: Context): Intent {
        return Intent(context, ScreenCapturePermissionActivity::class.java).apply {
            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP or Intent.FLAG_ACTIVITY_SINGLE_TOP
        }
    }

    fun requestStart(context: Context) {
        context.startActivity(createStartIntent(context))
    }

    fun requestStop(context: Context) {
        val intent = Intent(ACTION_STOP_PHANTOM_PIP_PREVIEW).apply {
            `package` = context.packageName
        }
        context.sendBroadcast(intent)
        ScreenCaptureForegroundService.stop(context)
    }
}
