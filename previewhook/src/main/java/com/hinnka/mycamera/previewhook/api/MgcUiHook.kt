package com.hinnka.mycamera.previewhook.api

import android.app.Activity
import android.hardware.display.DisplayManager
import android.view.Display

object MgcUiHook {
    /**
     * Called from CameraActivity.onCreate() smali hook.
     */
    @JvmStatic
    fun onActivityCreate(activity: Activity) {
        val display = activity.getSystemService(DisplayManager::class.java)
            ?.getDisplay(Display.DEFAULT_DISPLAY)
        MgcSurfaceProxyPreviewRenderer.recordDisplay(display)
        val appContext = activity.applicationContext
        MgcJpegPipelineRuntime.configure(appContext)
        PhotonLookClient.syncAsync(appContext, force = true)
    }
}
