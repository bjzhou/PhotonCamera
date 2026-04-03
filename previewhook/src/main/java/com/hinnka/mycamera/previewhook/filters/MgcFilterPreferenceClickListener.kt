package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.preference.Preference

class MgcFilterPreferenceClickListener(
    private val activity: Activity,
) : Preference.OnPreferenceClickListener {
    override fun onPreferenceClick(preference: Preference?): Boolean {
        MgcFilterManagementDialog.show(activity)
        return true
    }
}
