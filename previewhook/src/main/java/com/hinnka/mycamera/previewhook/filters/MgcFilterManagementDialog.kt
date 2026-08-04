package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.ComponentName
import android.content.Intent
import android.util.Log
import android.widget.Toast
import com.hinnka.mycamera.previewhook.api.PhotonLookClient

/**
 * Signature-preserving bridge for old MGC smali hooks.
 *
 * Filter selection and management live in Photon. Both the legacy settings entry
 * and the viewfinder button launch the exported transparent Photon panel.
 */
object MgcFilterManagementDialog {
    @JvmStatic
    fun show(activity: Activity) {
        val launched = TARGET_PACKAGES.any { packageName ->
            val intent = Intent(ACTION_SELECT_MGC_LOOK).apply {
                component = ComponentName(packageName, TARGET_ACTIVITY_CLASS)
                addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION)
            }
            try {
                activity.startActivity(intent)
                true
            } catch (_: ActivityNotFoundException) {
                false
            } catch (throwable: SecurityException) {
                Log.w(TAG, "Photon filter panel rejected package=$packageName", throwable)
                false
            }
        }
        if (!launched) {
            Log.w(TAG, "No compatible Photon filter panel is installed")
            Toast.makeText(
                activity,
                resolveHostString(
                    activity,
                    "mgc_photon_filter_unavailable",
                    "Photon Camera is unavailable.",
                ),
                Toast.LENGTH_SHORT,
            ).show()
        }
    }

    @JvmStatic
    fun dismiss() {
    }

    @JvmStatic
    fun handleActivityResult(activity: Activity, requestCode: Int, resultCode: Int, data: Intent?) {
        PhotonLookClient.syncAsync(activity.applicationContext, force = true)
    }

    private fun resolveHostString(activity: Activity, name: String, fallback: String): String {
        val id = activity.resources.getIdentifier(name, "string", activity.packageName)
        return id.takeIf { it != 0 }?.let(activity::getString) ?: fallback
    }

    private const val TAG = "PhotonFilterPanel"
    private const val ACTION_SELECT_MGC_LOOK =
        "com.hinnka.mycamera.action.SELECT_MGC_LOOK"
    private const val TARGET_ACTIVITY_CLASS =
        "com.hinnka.mycamera.mgc.MgcFilterSelectionActivity"
    private val TARGET_PACKAGES = listOf(
        "com.hinnka.mycamera.debug",
        "com.hinnka.mycamera",
        "com.samsung.android.scan3d.debug",
        "com.samsung.android.scan3d",
        "com.meitu.meiyancamera.debug",
        "com.meitu.meiyancamera",
    )
}
