package com.hinnka.mycamera.phantom

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.os.Environment
import android.provider.MediaStore
import android.provider.Settings
import android.view.View
import android.widget.RemoteViews
import com.hinnka.mycamera.MainActivity
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.gallery.PhotoData
import com.hinnka.mycamera.utils.DeviceUtil
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

class PhantomWidgetProvider : AppWidgetProvider() {

    companion object {
        private const val ACTION_TOGGLE_PHANTOM = "com.hinnka.mycamera.phantom.ACTION_TOGGLE_PHANTOM"
        private const val ACTION_OPEN_APP = "com.hinnka.mycamera.phantom.ACTION_OPEN_APP"
        private const val ACTION_OPEN_FILTERS = "com.hinnka.mycamera.phantom.ACTION_OPEN_FILTERS"
        private const val ACTION_OPEN_FRAMES = "com.hinnka.mycamera.phantom.ACTION_OPEN_FRAMES"
        private const val ACTION_OPEN_GALLERY = "com.hinnka.mycamera.phantom.ACTION_OPEN_GALLERY"
    }

    private val providerScope = CoroutineScope(Dispatchers.Main + Job())

    override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray) {
        val contentRepository = ContentRepository.getInstance(context)
        val userPreferencesRepository = contentRepository.userPreferencesRepository
        val galleryRepository = contentRepository.galleryRepository
        providerScope.launch {
            val phantomMode = userPreferencesRepository.userPreferences.first().phantomMode
            val latestPhoto = withContext(Dispatchers.IO) {
                galleryRepository.getLatestPhoto()
            }
            for (appWidgetId in appWidgetIds) {
                updateAppWidget(context, appWidgetManager, appWidgetId, phantomMode, latestPhoto)
            }
        }
    }

    override fun onReceive(context: Context, intent: Intent) {
        super.onReceive(context, intent)
        val userPreferencesRepository = ContentRepository.getInstance(context).userPreferencesRepository
        when (intent.action) {
            ACTION_TOGGLE_PHANTOM -> {
                providerScope.launch {
                    val currentMode = userPreferencesRepository.userPreferences.first().phantomMode
                    val newMode = !currentMode

                    if (newMode && (!Settings.canDrawOverlays(context) || !Environment.isExternalStorageManager())) {
                        val mainIntent = Intent(context, MainActivity::class.java).apply {
                            flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                            putExtra("show_ghost_permissions", true)
                        }
                        context.startActivity(mainIntent)
                    } else {
                        userPreferencesRepository.savePhantomMode(newMode)
                        updateAllWidgets(context)

                        if (newMode) {
                            val prefs = userPreferencesRepository.userPreferences.first()
                            if (prefs.launchCameraOnPhantomMode) {
                                try {
                                    val cameraIntent = Intent(MediaStore.INTENT_ACTION_STILL_IMAGE_CAMERA).apply {
                                        addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                    }
                                    context.startActivity(cameraIntent)
                                } catch (e: Exception) {
                                }
                            }
                        }
                    }
                }
            }

            ACTION_OPEN_APP -> {
                val mainIntent = Intent(context, MainActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                    putExtra("route", com.hinnka.mycamera.Routes.CAMERA)
                }
                context.startActivity(mainIntent)
            }

            ACTION_OPEN_FILTERS -> {
                val mainIntent = Intent(context, MainActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                    putExtra("route", com.hinnka.mycamera.Routes.FILTER_MANAGEMENT)
                }
                context.startActivity(mainIntent)
            }

            ACTION_OPEN_FRAMES -> {
                val mainIntent = Intent(context, MainActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                    putExtra("route", com.hinnka.mycamera.Routes.FRAME_MANAGEMENT)
                }
                context.startActivity(mainIntent)
            }

            ACTION_OPEN_GALLERY -> {
                val mainIntent = Intent(context, MainActivity::class.java).apply {
                    flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                    putExtra("route", com.hinnka.mycamera.Routes.GALLERY)
                }
                context.startActivity(mainIntent)
            }
        }
    }

    private fun updateAllWidgets(context: Context) {
        val appWidgetManager = AppWidgetManager.getInstance(context)
        val componentName = ComponentName(context, PhantomWidgetProvider::class.java)
        val appWidgetIds = appWidgetManager.getAppWidgetIds(componentName)
        val userPreferencesRepository = ContentRepository.getInstance(context).userPreferencesRepository
        val galleryRepository = ContentRepository.getInstance(context).galleryRepository
        providerScope.launch {
            val phantomMode = userPreferencesRepository.userPreferences.first().phantomMode
            val latestPhoto = withContext(Dispatchers.IO) {
                galleryRepository.getLatestPhoto()
            }
            for (appWidgetId in appWidgetIds) {
                updateAppWidget(context, appWidgetManager, appWidgetId, phantomMode, latestPhoto)
            }
        }
    }

    private fun updateAppWidget(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetId: Int,
        isActive: Boolean,
        latestPhoto: PhotoData?
    ) {
        val views = RemoteViews(context.packageName, R.layout.phantom_widget)

        if (DeviceUtil.isChinaFlavor) {
            views.setViewVisibility(R.id.btn_frames, View.GONE)
            views.setViewVisibility(R.id.btn_phantom, View.VISIBLE)
        } else {
            views.setViewVisibility(R.id.btn_frames, View.VISIBLE)
            views.setViewVisibility(R.id.btn_phantom, View.GONE)
        }

        // Update Phantom Toggle
        views.setViewVisibility(R.id.phantom_icon, if (isActive) View.VISIBLE else View.GONE)
        views.setViewVisibility(R.id.phantom_icon_off, if (isActive) View.GONE else View.VISIBLE)

        // Set up click intents
        views.setOnClickPendingIntent(R.id.btn_phantom, getPendingSelfIntent(context, ACTION_TOGGLE_PHANTOM))
        views.setOnClickPendingIntent(R.id.btn_app, getPendingSelfIntent(context, ACTION_OPEN_APP))
        views.setOnClickPendingIntent(R.id.btn_filters, getPendingSelfIntent(context, ACTION_OPEN_FILTERS))
        views.setOnClickPendingIntent(R.id.btn_frames, getPendingSelfIntent(context, ACTION_OPEN_FRAMES))
        views.setOnClickPendingIntent(R.id.btn_recent_header, getPendingSelfIntent(context, ACTION_OPEN_GALLERY))

        // Update Recent Photos
        if (latestPhoto != null) {
            providerScope.launch {
                val bitmap = withContext(Dispatchers.IO) {
                    try {
                        val contextResolver = context.contentResolver
                        val inputStream = contextResolver.openInputStream(latestPhoto.thumbnailUri)
                        android.graphics.BitmapFactory.decodeStream(inputStream)
                    } catch (e: Exception) {
                        null
                    }
                }
                if (bitmap != null) {
                    views.setImageViewBitmap(R.id.photo_1, bitmap)
                    // Click on photo opens photo detail
                    val intent = Intent(context, MainActivity::class.java).apply {
                        flags = Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP
                        putExtra("route", com.hinnka.mycamera.Routes.photoDetail(photoId = latestPhoto.id))
                    }
                    val pendingIntent = PendingIntent.getActivity(
                        context,
                        R.id.photo_1, // Unique request code per photo
                        intent,
                        PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
                    )
                    views.setOnClickPendingIntent(R.id.photo_1, pendingIntent)
                    appWidgetManager.partiallyUpdateAppWidget(appWidgetId, views)
                }
            }
        } else {
            views.setImageViewResource(R.id.photo_1, 0)
        }

        appWidgetManager.updateAppWidget(appWidgetId, views)
    }

    private fun getPendingSelfIntent(context: Context, action: String): PendingIntent {
        val intent = Intent(context, PhantomWidgetProvider::class.java).apply {
            this.action = action
        }
        return PendingIntent.getBroadcast(
            context,
            action.hashCode(),
            intent,
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE
        )
    }
}
