package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.app.Dialog
import android.graphics.Color
import android.view.Gravity
import android.view.ViewGroup
import android.widget.FrameLayout

/**
 * Shows a full-screen dialog with View-based filter management UI.
 * No Compose dependencies - uses only android.app.Dialog and standard Views.
 */
object MgcFilterManagementDialog {
    @Volatile
    private var activeDialog: Dialog? = null

    @JvmStatic
    fun show(activity: Activity) {
        dismiss()

        val controller = MgcFilterController(activity.applicationContext)
        val strings = HostStrings(activity.resources, activity.packageName)
        val dialog = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar)

        val contentView = MgcFilterManagementScreen(activity, controller, strings) { dialog.dismiss() }

        dialog.setContentView(
            contentView,
            FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT).apply {
                gravity = Gravity.CENTER
            }
        )
        dialog.window?.setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
        dialog.setOnDismissListener {
            controller.store.saveFilterOrder(controller.store.loadItems().map { it.info.id })
            if (activeDialog === dialog) activeDialog = null
        }
        dialog.show()
        activeDialog = dialog
    }

    @JvmStatic
    fun dismiss() {
        activeDialog?.dismiss()
        activeDialog = null
    }
}
