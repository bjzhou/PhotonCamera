package com.hinnka.mycamera

import android.annotation.SuppressLint
import android.app.Application
import android.content.Context
import android.content.Intent
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.phantom.PhantomService
import com.hinnka.mycamera.phantom.PhantomShortcutActivity
import com.hinnka.mycamera.screencapture.PhantomPipPreviewCoordinator
import com.hinnka.mycamera.update.AppUpdateManager
import com.hinnka.mycamera.utils.BuglyHelper
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import kotlinx.coroutines.MainScope
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.launch

class MyCameraApplication : Application() {
    private val applicationScope = MainScope()

    override fun onCreate() {
        super.onCreate()
        StartupTrace.mark("Application.onCreate start")
        instance = this
        StartupTrace.measure("BuglyHelper.init") {
            BuglyHelper.init(this)
        }
        val contentRepository = ContentRepository.getInstance(this)
        StartupTrace.measure("ContentRepository.initialize") {
            contentRepository.initialize()
        }
        phantomService = StartupTrace.measure("PhantomService()") {
            PhantomService(this)
        }
        recoverPrivateGalleryIndexForDebugBuild()
//        AppUpdateManager.startSilentUpdate(this)

        val userPreferencesRepository = contentRepository.userPreferencesRepository
        applicationScope.launch {
            StartupTrace.measure("Application.first userPreferences load") {
                userPreferencesRepository.userPreferences.first()
            }
            userPreferencesRepository.userPreferences.map { it.phantomMode }.distinctUntilChanged()
                .collect { phantomMode ->
                    StartupTrace.mark("Application.phantomMode collected", "phantomMode=$phantomMode")
                    if (phantomMode) {
                        phantomService.start()
                    } else {
                        PhantomPipPreviewCoordinator.requestStop(this@MyCameraApplication)
                        phantomService.stop()
                    }
                    if (DeviceUtil.canShowPhantom) {
                        updateShortcuts(phantomMode)
                    }
                    updateWidgets(this@MyCameraApplication)
                }
        }
        StartupTrace.mark("Application.onCreate end")
    }

    private fun recoverPrivateGalleryIndexForDebugBuild() {
        if (!BuildConfig.DEBUG) return
        applicationScope.launch {
            try {
                val result = GalleryManager.recoverPrivatePhotoDirectoryToDatabase(this@MyCameraApplication)
                PLog.d(
                    TAG,
                    "Debug private gallery recovery: scanned=${result.scannedCount}, " +
                        "restored=${result.restoredCount}, existing=${result.skippedExistingCount}, " +
                        "unsupported=${result.skippedUnsupportedCount}, failed=${result.failedCount}"
                )
            } catch (e: Exception) {
                PLog.e(TAG, "Debug private gallery recovery failed", e)
            }
        }
    }

    private fun updateShortcuts(isActive: Boolean) {
        val shortcutManager = getSystemService(android.content.pm.ShortcutManager::class.java)
        val phantomShortcut = android.content.pm.ShortcutInfo.Builder(this, "phantom_toggle")
            .setShortLabel(getString(if (isActive) R.string.close_ghost_mode else R.string.ghost_mode))
            .setIcon(android.graphics.drawable.Icon.createWithResource(this, R.drawable.ic_camera))
            .setIntent(Intent(this, PhantomShortcutActivity::class.java).apply {
                action = Intent.ACTION_VIEW
            })
            .build()
        val lutShortcut = android.content.pm.ShortcutInfo.Builder(this, "lut_manage")
            .setShortLabel(getString(R.string.filter_management_title))
            .setIcon(android.graphics.drawable.Icon.createWithResource(this, R.drawable.auto_awesome_color))
            .setIntent(Intent(this, MainActivity::class.java).apply {
                action = Intent.ACTION_VIEW
                putExtra("route", Routes.FILTER_MANAGEMENT)
            })
            .build()
        shortcutManager.dynamicShortcuts = listOf(phantomShortcut, lutShortcut)
    }

    companion object {
        private const val TAG = "MyCameraApplication"

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
