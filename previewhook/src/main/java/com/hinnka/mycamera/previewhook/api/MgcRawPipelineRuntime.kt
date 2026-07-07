package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.content.SharedPreferences
import android.preference.PreferenceManager
import android.util.Log

object MgcRawPipelineRuntime {
    private const val TAG = "codex_raw_chain"
    private const val RAW_KEY = "raw_key"
    private const val RAW_FORMAT_DNG = "37"
    private const val COMPRESS_DNG_KEY = "compress_dng_key"
    private const val GALLERY_KEY = "galley_key"
    private const val GOOGLE_RAW_OUTPUT_KEY = "pref_camera_raw_output_key"
    private const val GOOGLE_RAW_AVAILABLE_KEY = "pref_camera_raw_output_option_available_key"
    private const val GOOGLE_RAW_NOTICE_SHOWN_KEY = "pref_camera_raw_output_notice_shown_key"
    private const val MANAGED_BOOLEAN_TRUE = "1"

    private val photonPackageCandidates = listOf(
        "com.hinnka.mycamera.debug",
        "com.hinnka.mycamera",
        "com.samsung.android.scan3d.debug",
        "com.samsung.android.scan3d",
        "com.meitu.meiyancamera.debug",
        "com.meitu.meiyancamera",
    )

    @JvmStatic
    fun configure(context: Context?) {
        val appContext = context?.applicationContext ?: return
        val preferences = PreferenceManager.getDefaultSharedPreferences(appContext)
        val editor = preferences.edit()
        var changed = false
        val photonGalleryPackage = resolvePhotonGalleryPackage(appContext)

        changed = editor.putStringIfDifferent(preferences, RAW_KEY, RAW_FORMAT_DNG) || changed
        changed = editor.putStringIfDifferent(preferences, GOOGLE_RAW_AVAILABLE_KEY, MANAGED_BOOLEAN_TRUE) || changed
        changed = editor.putStringIfDifferent(preferences, GOOGLE_RAW_OUTPUT_KEY, MANAGED_BOOLEAN_TRUE) || changed
        changed = editor.putStringIfDifferent(preferences, GOOGLE_RAW_NOTICE_SHOWN_KEY, MANAGED_BOOLEAN_TRUE) || changed
        if (photonGalleryPackage != null) {
            changed = editor.putStringIfDifferent(preferences, GALLERY_KEY, photonGalleryPackage) || changed
        }
        if (preferences.all[COMPRESS_DNG_KEY] is Boolean) {
            editor.remove(COMPRESS_DNG_KEY)
            changed = true
        }

        MgcJpegOutputController.setDefaultJpegSuppressed(photonGalleryPackage != null)
        if (changed) {
            editor.apply()
            Log.d(TAG, "Configured MGC RAW output for Photon handoff gallery=$photonGalleryPackage")
        } else {
            Log.d(TAG, "MGC RAW output already configured gallery=$photonGalleryPackage")
        }
    }

    private fun resolvePhotonGalleryPackage(context: Context): String? {
        val packageManager = context.packageManager
        return photonPackageCandidates.firstOrNull { packageName ->
            packageManager.getLaunchIntentForPackage(packageName) != null
        }
    }

    private fun SharedPreferences.getStringCompat(key: String): String? {
        return runCatching { getString(key, null) }.getOrNull()
            ?: all[key]?.toString()
    }

    private fun SharedPreferences.Editor.putStringIfDifferent(
        preferences: SharedPreferences,
        key: String,
        value: String
    ): Boolean {
        if (preferences.getStringCompat(key) == value) return false
        putString(key, value)
        return true
    }
}
