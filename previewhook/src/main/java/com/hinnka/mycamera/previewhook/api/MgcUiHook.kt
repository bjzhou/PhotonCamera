package com.hinnka.mycamera.previewhook.api

import android.app.Activity

object MgcUiHook {
    /**
     * Called from CameraActivity.onCreate() smali hook.
     */
    @JvmStatic
    fun onActivityCreate(activity: Activity) {
        val appContext = activity.applicationContext
        PhotonRawClient.initialize(appContext)
        MgcRawPipelineRuntime.configure(appContext)
        PhotonLookClient.syncAsync(appContext, force = true)
    }
}
