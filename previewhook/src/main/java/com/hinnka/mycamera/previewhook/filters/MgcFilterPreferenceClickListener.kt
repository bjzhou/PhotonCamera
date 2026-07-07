package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.preference.Preference
import com.hinnka.mycamera.previewhook.api.PhotonLookClient

class MgcFilterPreferenceClickListener(
    private val activity: Activity,
) : Preference.OnPreferenceClickListener {
    override fun onPreferenceClick(preference: Preference?): Boolean {
        PhotonLookClient.syncAsync(activity.applicationContext, force = true)
        return true
    }
}
