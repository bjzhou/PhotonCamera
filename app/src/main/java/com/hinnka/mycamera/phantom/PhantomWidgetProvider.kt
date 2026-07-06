package com.hinnka.mycamera.phantom

import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Environment
import android.provider.MediaStore
import android.provider.Settings
import android.view.View
import android.widget.RemoteViews
import com.hinnka.mycamera.MainActivity
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.screencapture.PhantomPipPreviewCoordinator
import com.hinnka.mycamera.gallery.MediaData
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.utils.DeviceUtil
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.hinnka.mycamera.data.WidgetTheme
import android.content.res.Configuration
import androidx.core.content.ContextCompat

class PhantomWidgetProvider : AppWidgetProvider() {

    companion object {
        private const val TAG = "PhantomWidgetProvider"
        private const val WIDGET_BITMAP_MAX_EDGE = 512

        private const val ACTION_TOGGLE_PHANTOM = "com.hinnka.mycamera.phantom.ACTION_TOGGLE_PHANTOM"
        private const val ACTION_OPEN_APP = "com.hinnka.mycamera.phantom.ACTION_OPEN_APP"
        private const val ACTION_OPEN_FILTERS = "com.hinnka.mycamera.phantom.ACTION_OPEN_FILTERS"
        private const val ACTION_OPEN_FRAMES = "com.hinnka.mycamera.phantom.ACTION_OPEN_FRAMES"
        private const val ACTION_OPEN_GALLERY = "com.hinnka.mycamera.phantom.ACTION_OPEN_GALLERY"
    }

    private val providerScope = CoroutineScope(Dispatchers.Main + Job())

    override fun onUpdate(context: Context, appWidgetManager: AppWidgetManager, appWidgetIds: IntArray) {
        val contentRepository = ContentRepository.getInstance(context)
        val galleryRepository = contentRepository.galleryRepository
        providerScope.launch {
            val prefs = contentRepository.userPreferencesRepository.userPreferences.first()
            val phantomMode = prefs.phantomMode
            val widgetTheme = prefs.widgetTheme
            val latestPhoto = withContext(Dispatchers.IO) {
                galleryRepository.getLatestPhoto()?.apply {
                    metadata = GalleryManager.loadMetadata(context, id)
                }
            }
            for (appWidgetId in appWidgetIds) {
                updateAppWidget(context, appWidgetManager, appWidgetId, phantomMode, latestPhoto, widgetTheme)
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
                        } else {
                            PhantomPipPreviewCoordinator.requestStop(context)
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
            val prefs = userPreferencesRepository.userPreferences.first()
            val phantomMode = prefs.phantomMode
            val widgetTheme = prefs.widgetTheme
            val latestPhoto = withContext(Dispatchers.IO) {
                galleryRepository.getLatestPhoto()
            }
            for (appWidgetId in appWidgetIds) {
                updateAppWidget(context, appWidgetManager, appWidgetId, phantomMode, latestPhoto, widgetTheme)
            }
        }
    }

    private fun updateAppWidget(
        context: Context,
        appWidgetManager: AppWidgetManager,
        appWidgetId: Int,
        isActive: Boolean,
        latestPhoto: MediaData?,
        widgetTheme: WidgetTheme
    ) {
        val views = RemoteViews(context.packageName, R.layout.phantom_widget)

        val isDark = when (widgetTheme) {
            WidgetTheme.FOLLOW_SYSTEM -> (context.resources.configuration.uiMode and Configuration.UI_MODE_NIGHT_MASK) == Configuration.UI_MODE_NIGHT_YES
            WidgetTheme.DARK -> true
            WidgetTheme.LIGHT -> false
        }

        // Apply theme colors
        val bgRes = if (isDark) R.drawable.widget_background_dark else R.drawable.widget_background_light
        val captureBtnRes = if (isDark) R.drawable.btn_capture_bg_dark else R.drawable.btn_capture_bg_light
        val secondaryBtnRes = if (isDark) R.drawable.btn_secondary_bg_dark else R.drawable.btn_secondary_bg_light
        val primaryText = ContextCompat.getColor(
            context,
            if (isDark) R.color.widget_text_primary_dark else R.color.widget_text_primary_light
        )
        val secondaryText = ContextCompat.getColor(
            context,
            if (isDark) R.color.widget_text_secondary_dark else R.color.widget_text_secondary_light
        )

        views.setInt(R.id.root, "setBackgroundResource", bgRes)
        views.setInt(R.id.btn_app, "setBackgroundResource", captureBtnRes)
        views.setInt(R.id.btn_filters, "setBackgroundResource", secondaryBtnRes)
        views.setInt(R.id.btn_frames, "setBackgroundResource", secondaryBtnRes)
        views.setInt(R.id.btn_phantom, "setBackgroundResource", secondaryBtnRes)
        views.setInt(R.id.photo_1, "setBackgroundResource", secondaryBtnRes)

        views.setTextColor(R.id.app_name_text, primaryText)
        views.setTextColor(R.id.recent_text, secondaryText)
        // views.setInt(R.id.ic_camera, "setColorFilter", primaryText)
        views.setInt(R.id.ic_filters, "setColorFilter", primaryText)
        views.setInt(R.id.ic_frames, "setColorFilter", primaryText)
        views.setInt(R.id.phantom_icon_off, "setColorFilter", primaryText)
        // phantom_icon (active) is always accent color, recent_arrow is accent
        views.setInt(R.id.recent_arrow, "setColorFilter", ContextCompat.getColor(context, R.color.widget_recent_accent))
        views.setInt(R.id.phantom_icon, "setColorFilter", ContextCompat.getColor(context, R.color.widget_accent))

        if (DeviceUtil.canShowPhantom) {
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

        // PLog.d(TAG, "updateAppWidget: $appWidgetId $latestPhoto")

        // Update Recent Photos
        if (latestPhoto != null) {
            providerScope.launch {
                val bitmap = withContext(Dispatchers.IO) {
                    try {
                        val input = decodeWidgetBitmap(context, latestPhoto)
                        if (input == null) {
                            PLog.w(TAG, "Widget preview decode returned null for ${latestPhoto.thumbnailUri}")
                            null
                        } else {
                            val processed = latestPhoto.metadata?.let {
                                ContentRepository.getInstance(context).photoProcessor.processBitmap(
                                    context,
                                    null,
                                    input,
                                    it,
                                )
                            } ?: input
                            constrainWidgetBitmap(processed)
                        }
                    } catch (e: Exception) {
                        PLog.e(TAG, "Failed to process photo", e)
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

    private fun decodeWidgetBitmap(context: Context, latestPhoto: MediaData): Bitmap? {
        val uri = latestPhoto.thumbnailUri
        val options = BitmapFactory.Options().apply {
            inJustDecodeBounds = true
        }

        if (!decodeBitmapBounds(context, uri, options)) {
            return null
        }

        if (options.outWidth <= 0 || options.outHeight <= 0) {
            PLog.w(TAG, "Widget preview bounds unavailable for $uri")
            return null
        }

        val decodeOptions = BitmapFactory.Options().apply {
            inSampleSize = calculateInSampleSize(options, WIDGET_BITMAP_MAX_EDGE, WIDGET_BITMAP_MAX_EDGE)
        }
        return decodeBitmap(context, uri, decodeOptions)
    }

    private fun decodeBitmapBounds(context: Context, uri: Uri, options: BitmapFactory.Options): Boolean {
        return when (uri.scheme) {
            "file" -> {
                BitmapFactory.decodeFile(uri.path, options) != null || options.outWidth > 0
            }
            else -> {
                context.contentResolver.openInputStream(uri)?.use { input ->
                    BitmapFactory.decodeStream(input, null, options)
                } != null || options.outWidth > 0
            }
        }
    }

    private fun decodeBitmap(context: Context, uri: Uri, options: BitmapFactory.Options): Bitmap? {
        return when (uri.scheme) {
            "file" -> BitmapFactory.decodeFile(uri.path, options)
            else -> context.contentResolver.openInputStream(uri)?.use { input ->
                BitmapFactory.decodeStream(input, null, options)
            }
        }
    }

    private fun constrainWidgetBitmap(bitmap: Bitmap): Bitmap {
        val largestEdge = maxOf(bitmap.width, bitmap.height)
        if (largestEdge <= WIDGET_BITMAP_MAX_EDGE) {
            return bitmap
        }

        val scale = WIDGET_BITMAP_MAX_EDGE.toFloat() / largestEdge.toFloat()
        val targetWidth = (bitmap.width * scale).toInt().coerceAtLeast(1)
        val targetHeight = (bitmap.height * scale).toInt().coerceAtLeast(1)
        val scaledBitmap = Bitmap.createScaledBitmap(bitmap, targetWidth, targetHeight, true)
        if (scaledBitmap != bitmap && !bitmap.isRecycled) {
            bitmap.recycle()
        }
        return scaledBitmap
    }

    private fun calculateInSampleSize(options: BitmapFactory.Options, reqWidth: Int, reqHeight: Int): Int {
        val height = options.outHeight
        val width = options.outWidth
        var inSampleSize = 1

        if (height > reqHeight || width > reqWidth) {
            var halfHeight = height / 2
            var halfWidth = width / 2
            while (halfHeight / inSampleSize >= reqHeight && halfWidth / inSampleSize >= reqWidth) {
                inSampleSize *= 2
            }
        }

        return inSampleSize
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
