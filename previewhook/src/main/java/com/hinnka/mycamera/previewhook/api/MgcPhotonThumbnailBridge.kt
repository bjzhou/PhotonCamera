package com.hinnka.mycamera.previewhook.api

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.util.Log
import android.util.Size
import android.view.Surface
import android.view.View
import android.widget.ImageView
import java.lang.ref.WeakReference
import java.util.concurrent.Executors

object MgcPhotonThumbnailBridge {
    private const val TAG = "codex_raw_chain"
    private const val THUMBNAIL_BUTTON_ID = "thumbnail_button"
    private const val REVIEW_ACTION = "com.android.camera.action.REVIEW"
    private const val DNG_MIME_TYPE = "image/x-adobe-dng"
    private const val MAX_THUMBNAIL_EDGE = 512
    private const val MAX_VIEW_RETRIES = 8
    private const val VIEW_RETRY_DELAY_MS = 250L

    private val photonPackageCandidates = listOf(
        "com.hinnka.mycamera.debug",
        "com.hinnka.mycamera",
        "com.samsung.android.scan3d.debug",
        "com.samsung.android.scan3d",
        "com.meitu.meiyancamera.debug",
        "com.meitu.meiyancamera",
    )

    private val mainHandler = Handler(Looper.getMainLooper())
    private val decodeExecutor = Executors.newSingleThreadExecutor()

    @Volatile
    private var activityRef: WeakReference<Activity>? = null

    @Volatile
    private var latestDngUri: Uri? = null

    @JvmStatic
    fun initialize(activity: Activity?) {
        if (activity == null) return
        activityRef = WeakReference(activity)
        updateDisplayRotation(activity)
        showLatestDngContent(activity.applicationContext, latestDngUri)
    }

    @JvmStatic
    fun showLatestDngContent(context: Context?, dngUri: Uri?) {
        showLatestDngContent(context, dngUri, attempt = 0)
    }

    private fun showLatestDngContent(context: Context?, dngUri: Uri?, attempt: Int) {
        val appContext = context?.applicationContext ?: return
        val resolvedDngUri = dngUri ?: return
        latestDngUri = resolvedDngUri

        mainHandler.post {
            val activity = activityRef?.get()
            if (activity != null) {
                updateDisplayRotation(activity)
            }
            val filteredPreview = MgcFilteredPreviewThumbnailCache.latestFreshBitmap()
            if (activity != null && filteredPreview != null) {
                applyThumbnail(activity, filteredPreview, resolvedDngUri, attempt = 0)
                Log.d(TAG, "Updated MGC thumbnail from filtered preview cache uri=$resolvedDngUri")
                return@post
            }
            retryOrLoadDngThumbnail(appContext, resolvedDngUri, attempt)
        }
    }

    private fun retryOrLoadDngThumbnail(context: Context, dngUri: Uri, attempt: Int) {
        if (attempt < MAX_VIEW_RETRIES) {
            mainHandler.postDelayed(
                { showLatestDngContent(context, dngUri, attempt + 1) },
                VIEW_RETRY_DELAY_MS
            )
            return
        }

        decodeExecutor.execute {
            val bitmap = loadDngThumbnail(context, dngUri)
            if (bitmap == null) {
                Log.d(TAG, "Unable to load MGC DNG thumbnail uri=$dngUri")
                return@execute
            }
            mainHandler.post {
                val activity = activityRef?.get()
                if (activity == null) {
                    Log.d(TAG, "MGC thumbnail skipped: activity unavailable")
                    return@post
                }
                applyThumbnail(activity, bitmap, dngUri, attempt = 0)
            }
        }
    }

    private fun applyThumbnail(
        activity: Activity,
        bitmap: Bitmap,
        photoUri: Uri,
        attempt: Int
    ) {
        val view = findThumbnailView(activity)
        if (view == null) {
            if (attempt < MAX_VIEW_RETRIES) {
                mainHandler.postDelayed(
                    { applyThumbnail(activity, bitmap, photoUri, attempt + 1) },
                    VIEW_RETRY_DELAY_MS
                )
            } else {
                Log.d(TAG, "MGC thumbnail_button unavailable")
            }
            return
        }

        runCatching {
            view.visibility = View.VISIBLE
            view.isEnabled = true
            view.isClickable = true
            updateRoundedThumbnail(view, bitmap)
            view.setOnClickListener { launchPhotonPhoto(activity, photoUri) }
            Log.d(TAG, "Applied MGC thumbnail uri=$photoUri")
        }.onFailure {
            Log.d(TAG, "Failed to update MGC thumbnail: ${it.message}")
        }
    }

    private fun findThumbnailView(activity: Activity): View? {
        return findViewByName(activity, THUMBNAIL_BUTTON_ID)
    }

    private fun updateDisplayRotation(activity: Activity) {
        val degrees = when (activity.windowManager.defaultDisplay.rotation) {
            Surface.ROTATION_90 -> 90
            Surface.ROTATION_180 -> 180
            Surface.ROTATION_270 -> 270
            else -> 0
        }
        MgcFilteredPreviewThumbnailCache.setDisplayRotationDegrees(degrees)
    }

    private fun findViewByName(activity: Activity, name: String): View? {
        val id = activity.resources.getIdentifier(name, "id", activity.packageName)
        if (id == 0) return null
        return activity.findViewById(id)
    }

    private fun updateRoundedThumbnail(view: View, bitmap: Bitmap) {
        runCatching {
            val method = view.javaClass.getMethod(
                "b",
                Bitmap::class.java,
                Integer.TYPE,
                java.lang.Boolean.TYPE
            )
            method.invoke(view, bitmap, 0, false)
        }.getOrElse {
            if (view is ImageView) {
                view.setImageBitmap(bitmap)
            } else {
                throw it
            }
        }
    }

    private fun launchPhotonPhoto(context: Context, photoUri: Uri) {
        val packageName = resolvePhotonPackage(context)
        val reviewIntent = Intent(REVIEW_ACTION).apply {
            setDataAndType(photoUri, DNG_MIME_TYPE)
            setPackage(packageName)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
        }
        val started = runCatching {
            context.startActivity(reviewIntent)
            true
        }.getOrElse {
            Log.d(TAG, "Photon review launch failed: ${it.message}")
            false
        }
        if (started) return

        val fallbackIntent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(photoUri, DNG_MIME_TYPE)
            setPackage(packageName)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
        }
        runCatching {
            context.startActivity(fallbackIntent)
        }.onFailure {
            Log.d(TAG, "Photon ACTION_VIEW launch failed: ${it.message}")
        }
    }

    private fun resolvePhotonPackage(context: Context): String? {
        val packageManager = context.packageManager
        return photonPackageCandidates.firstOrNull { packageName ->
            packageManager.getLaunchIntentForPackage(packageName) != null
        }
    }

    private fun loadDngThumbnail(context: Context, uri: Uri): Bitmap? {
        return runCatching {
            context.contentResolver.loadThumbnail(
                uri,
                Size(MAX_THUMBNAIL_EDGE, MAX_THUMBNAIL_EDGE),
                null
            )
        }.getOrElse {
            Log.d(TAG, "MGC DNG loadThumbnail failed: ${it.message}")
            null
        }
    }
}
