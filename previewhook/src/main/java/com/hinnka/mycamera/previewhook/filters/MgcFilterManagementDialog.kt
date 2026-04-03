package com.hinnka.mycamera.previewhook.filters

import android.app.Activity
import android.app.Dialog
import android.content.Intent
import android.net.Uri
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

    @Volatile
    private var activeScreen: MgcFilterManagementScreen? = null

    @JvmStatic
    fun show(activity: Activity) {
        dismiss()

        val controller = MgcFilterController(activity.applicationContext)
        val strings = HostStrings(activity.resources, activity.packageName)
        val dialog = Dialog(activity, android.R.style.Theme_DeviceDefault_NoActionBar)

        val contentView = MgcFilterManagementScreen(activity, controller, strings) { dialog.dismiss() }
        activeScreen = contentView

        dialog.setContentView(
            contentView,
            FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT).apply {
                gravity = Gravity.CENTER
            }
        )
        dialog.window?.setLayout(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT)
        dialog.setOnDismissListener {
            controller.store.saveFilterOrder(controller.store.loadItems().map { it.info.id })
            if (activeDialog === dialog) {
                activeDialog = null
                activeScreen = null
            }
        }
        dialog.show()
        activeDialog = dialog
    }

    @JvmStatic
    fun dismiss() {
        activeDialog?.dismiss()
        activeDialog = null
        activeScreen = null
    }

    /**
     * 由宿主 Activity.onActivityResult() 的 smali hook 调用，
     * 将文件选择/保存结果转发给当前可见的管理界面。
     */
    @JvmStatic
    fun handleActivityResult(activity: Activity, requestCode: Int, resultCode: Int, data: Intent?) {
        val screen = activeScreen ?: return
        val ok = resultCode == Activity.RESULT_OK

        when (requestCode) {
            MgcFilterManagementScreen.REQUEST_IMPORT_LUT -> {
                if (!ok || data == null) return
                val uris = mutableListOf<Uri>()
                val clipData = data.clipData
                if (clipData != null) {
                    for (i in 0 until clipData.itemCount) {
                        uris.add(clipData.getItemAt(i).uri)
                    }
                } else {
                    data.data?.let { uris.add(it) }
                }
                if (uris.isNotEmpty()) screen.handleImportResult(uris)
            }
            MgcFilterManagementScreen.REQUEST_EXPORT_LUT -> {
                if (!ok || data == null) return
                data.data?.let { screen.handleExportResult(it) }
            }
        }
    }
}
