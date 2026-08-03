package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.content.SharedPreferences
import android.preference.PreferenceManager
import android.util.Log

/**
 * Restores MGC's normal JPEG capture path after older Photon hooks forced DNG output.
 *
 * The values are written on every process start so imported MGC configurations cannot
 * accidentally re-enable the obsolete RAW handoff path.
 */
object MgcJpegPipelineRuntime {
    private const val TAG = "codex_jpeg_chain"
    private const val RAW_FORMAT_KEY = "raw_key"
    private const val RAW_FORMAT_AUTO = "0"
    private const val COMPRESS_DNG_KEY = "compress_dng_key"
    private const val GOOGLE_RAW_OUTPUT_KEY = "pref_camera_raw_output_key"
    private const val GOOGLE_RAW_AVAILABLE_KEY = "pref_camera_raw_output_option_available_key"
    private const val MANAGED_BOOLEAN_FALSE = "0"

    @JvmStatic
    fun configure(context: Context?) {
        val appContext = context?.applicationContext ?: return
        val preferences = PreferenceManager.getDefaultSharedPreferences(appContext)
        val editor = preferences.edit()
        var changed = false

        changed = editor.putStringIfDifferent(
            preferences,
            RAW_FORMAT_KEY,
            RAW_FORMAT_AUTO,
        ) || changed
        changed = editor.putStringIfDifferent(
            preferences,
            GOOGLE_RAW_AVAILABLE_KEY,
            MANAGED_BOOLEAN_FALSE,
        ) || changed
        changed = editor.putStringIfDifferent(
            preferences,
            GOOGLE_RAW_OUTPUT_KEY,
            MANAGED_BOOLEAN_FALSE,
        ) || changed
        if (preferences.contains(COMPRESS_DNG_KEY)) {
            editor.remove(COMPRESS_DNG_KEY)
            changed = true
        }

        if (changed) {
            editor.apply()
            Log.d(TAG, "Restored MGC default JPEG output")
        } else {
            Log.d(TAG, "MGC default JPEG output already active")
        }
    }

    private fun SharedPreferences.getStringCompat(key: String): String? {
        return runCatching { getString(key, null) }.getOrNull()
            ?: all[key]?.toString()
    }

    private fun SharedPreferences.Editor.putStringIfDifferent(
        preferences: SharedPreferences,
        key: String,
        value: String,
    ): Boolean {
        if (preferences.getStringCompat(key) == value) return false
        putString(key, value)
        return true
    }
}
