package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.provider.MediaStore
import android.util.Log

/**
 * Routes MGC's review intent to Photon Gallery when a Photon variant is installed.
 *
 * The original intent is reused so capture URIs, MIME types, extras, and grant flags
 * produced by MGC remain intact. If Photon is unavailable, the explicit Google Photos
 * package is removed and Android resolves the configured system gallery.
 */
object MgcGalleryIntentHook {
    private const val TAG = "codex_gallery"
    private const val CAMERA_REVIEW_ACTION = "com.android.camera.action.REVIEW"
    private const val SYSTEM_REVIEW_ACTION = "android.provider.action.REVIEW"
    private const val SYSTEM_SECURE_REVIEW_ACTION = "android.provider.action.REVIEW_SECURE"

    private val photonPackages = listOf(
        "com.hinnka.mycamera.debug",
        "com.hinnka.mycamera",
        "com.samsung.android.scan3d.debug",
        "com.samsung.android.scan3d",
        "com.meitu.meiyancamera.debug",
        "com.meitu.meiyancamera",
    )

    @JvmStatic
    fun applyPreferredGallery(intent: Intent): Intent {
        val application = MgcVfeLutRuntime.currentApplication()
        val photonPackage = application?.let(::findInstalledPhotonPackage)

        return if (photonPackage != null) {
            intent.action = CAMERA_REVIEW_ACTION
            intent.setPackage(photonPackage)
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            Log.i(TAG, "Using Photon Gallery package=$photonPackage")
            intent
        } else {
            val secure = intent.action?.contains("SECURE", ignoreCase = true) == true
            intent.action = if (secure) SYSTEM_SECURE_REVIEW_ACTION else SYSTEM_REVIEW_ACTION
            intent.setPackage(null)
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            Log.i(TAG, "Photon Gallery unavailable; using system gallery")
            intent
        }
    }

    @JvmStatic
    fun getPreferredGalleryPackage(context: Context): String {
        return findInstalledPhotonPackage(context)
            ?: resolveSystemGalleryPackage(context)
            ?: "android"
    }

    @JvmStatic
    fun getPreferredGalleryPackageInfo(context: Context): PackageInfo? {
        return runCatching {
            @Suppress("DEPRECATION")
            context.packageManager.getPackageInfo(getPreferredGalleryPackage(context), 0)
        }.getOrNull()
    }

    @JvmStatic
    fun buildPreferredGalleryLaunchIntent(context: Context): Intent? {
        val packageManager = context.packageManager
        val photonPackage = findInstalledPhotonPackage(context)
        if (photonPackage != null) {
            return packageManager.getLaunchIntentForPackage(photonPackage)
        }

        val systemIntent = buildSystemGalleryIntent()
        val systemPackage = resolveSystemGalleryPackage(context) ?: return null
        if (systemPackage != "android") {
            systemIntent.setPackage(systemPackage)
        }
        return systemIntent
    }

    private fun findInstalledPhotonPackage(context: Context): String? {
        val packageManager = context.packageManager
        return photonPackages.firstOrNull { packageName ->
            runCatching {
                @Suppress("DEPRECATION")
                val applicationInfo = packageManager.getApplicationInfo(
                    packageName,
                    ApplicationInfoFlags.value,
                )
                applicationInfo.enabled
            }.getOrDefault(false)
        }
    }

    private fun resolveSystemGalleryPackage(context: Context): String? {
        @Suppress("DEPRECATION")
        return context.packageManager
            .resolveActivity(buildSystemGalleryIntent(), 0)
            ?.activityInfo
            ?.packageName
    }

    private fun buildSystemGalleryIntent(): Intent {
        return Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, "image/*")
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
        }
    }

    private object ApplicationInfoFlags {
        @Suppress("DEPRECATION")
        val value: Int = 0
    }
}
