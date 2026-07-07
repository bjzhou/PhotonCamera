package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.content.Intent
import com.hinnka.mycamera.previewhook.api.PhotonLookClient

/**
 * Signature-preserving bridge for old MGC smali hooks.
 *
 * Filter selection and management now live in Photon. MGC only refreshes the
 * current Photon look when a legacy entry point is invoked.
 */
object MgcFilterManagementDialog {
    @JvmStatic
    fun show(activity: Activity) {
        PhotonLookClient.syncAsync(activity.applicationContext, force = true)
    }

    @JvmStatic
    fun dismiss() {
    }

    @JvmStatic
    fun handleActivityResult(activity: Activity, requestCode: Int, resultCode: Int, data: Intent?) {
    }
}
