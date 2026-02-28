package com.hinnka.mycamera

import android.annotation.SuppressLint
import android.app.Application
import android.content.Context
import android.content.Intent
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.phantom.PhantomService
import com.hinnka.mycamera.phantom.PhantomShortcutActivity
import com.hinnka.mycamera.utils.BuglyHelper
import com.hinnka.mycamera.utils.DeviceUtil
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.launch

class MyCameraApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        instance = this
        BuglyHelper.init(this)
        ContentRepository.getInstance(this).initialize()
        phantomService = PhantomService(this)

        val userPreferencesRepository = ContentRepository.getInstance(this).userPreferencesRepository
        MainScope().launch {
            userPreferencesRepository.userPreferences.map { it.phantomMode }.distinctUntilChanged()
                .collect { phantomMode ->
                    if (phantomMode) {
                        phantomService.start()
                    } else {
                        phantomService.stop()
                    }
                    if (DeviceUtil.isChinaFlavor) {
                        updateShortcuts(phantomMode)
                    }
                    updateWidgets(this@MyCameraApplication)
                }
        }
    }

    private fun updateShortcuts(isActive: Boolean) {
        val shortcutManager = getSystemService(android.content.pm.ShortcutManager::class.java)
        val shortcut = android.content.pm.ShortcutInfo.Builder(this, "phantom_toggle")
            .setShortLabel(getString(if (isActive) R.string.close_ghost_mode else R.string.ghost_mode))
            .setIcon(android.graphics.drawable.Icon.createWithResource(this, R.drawable.ic_camera_shortcut))
            .setIntent(Intent(this, PhantomShortcutActivity::class.java).apply {
                action = Intent.ACTION_VIEW
            })
            .build()
        shortcutManager.dynamicShortcuts = listOf(shortcut)
    }

    companion object {
        lateinit var instance: MyCameraApplication

        @SuppressLint("StaticFieldLeak")
        lateinit var phantomService: PhantomService

        fun updateWidgets(context: Context) {
            val appWidgetManager = android.appwidget.AppWidgetManager.getInstance(context)
            val componentName =
                android.content.ComponentName(context, com.hinnka.mycamera.phantom.PhantomWidgetProvider::class.java)
            val appWidgetIds = appWidgetManager.getAppWidgetIds(componentName)
            if (appWidgetIds.isNotEmpty()) {
                val intent = Intent(context, com.hinnka.mycamera.phantom.PhantomWidgetProvider::class.java).apply {
                    action = android.appwidget.AppWidgetManager.ACTION_APPWIDGET_UPDATE
                    putExtra(android.appwidget.AppWidgetManager.EXTRA_APPWIDGET_IDS, appWidgetIds)
                }
                context.sendBroadcast(intent)
            }
        }
    }
}