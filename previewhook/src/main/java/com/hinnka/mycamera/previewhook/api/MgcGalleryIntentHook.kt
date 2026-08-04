package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.content.Intent
import android.content.pm.ApplicationInfo
import android.content.pm.PackageInfo
import android.preference.PreferenceManager
import android.provider.MediaStore
import android.util.Log

/**
 * Routes MGC's default review intent to Photon Gallery when a Photon variant is installed.
 *
 * An explicitly selected gallery keeps MGC's original REVIEW intent and package. For the
 * default option, the original intent is reused so capture URIs, actions, extras, and flags
 * remain intact; only its target package is changed to Photon. If Photon is unavailable,
 * the intent remains a REVIEW intent and is routed through Android's system resolver.
 */
object MgcGalleryIntentHook {
    private const val TAG = "codex_gallery"
    private const val GALLERY_PREFERENCE_KEY = "galley_key"
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
    fun applyPreferredGallery(context: Context, intent: Intent): Intent {
        val configuredPackage = getConfiguredGalleryPackage(context)
        if (configuredPackage != null) {
            intent.setPackage(configuredPackage)
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            Log.i(
                TAG,
                "Using configured gallery package=$configuredPackage action=${intent.action}",
            )
            return intent
        }

        val photonPackage = findCompatiblePhotonPackage(context, intent)
        return if (photonPackage != null) {
            intent.setPackage(photonPackage)
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            Log.i(
                TAG,
                "Using Photon Gallery package=$photonPackage action=${intent.action}",
            )
            intent
        } else {
            val secure = isSecureReview(intent)
            intent.action = if (secure) SYSTEM_SECURE_REVIEW_ACTION else SYSTEM_REVIEW_ACTION
            intent.setPackage(null)
            intent.addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            Log.i(TAG, "Photon Gallery unavailable; using system REVIEW action=${intent.action}")
            intent
        }
    }

    @JvmStatic
    fun getPreferredGalleryPackage(context: Context): String {
        return getConfiguredGalleryPackage(context)
            ?: findInstalledPhotonPackage(context)
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
        val galleryPackage = getConfiguredGalleryPackage(context)
            ?: findInstalledPhotonPackage(context)
            ?: resolveSystemGalleryPackage(context)
            ?: return null
        return packageManager.getLaunchIntentForPackage(galleryPackage)
    }

    private fun getConfiguredGalleryPackage(context: Context): String? {
        @Suppress("DEPRECATION")
        return runCatching {
            PreferenceManager.getDefaultSharedPreferences(context.applicationContext)
                .getString(GALLERY_PREFERENCE_KEY, "")
                ?.trim()
                ?.takeIf(String::isNotEmpty)
        }.getOrNull()
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

    private fun findCompatiblePhotonPackage(context: Context, sourceIntent: Intent): String? {
        val packageManager = context.packageManager
        return photonPackages.firstOrNull { packageName ->
            isPackageEnabled(context, packageName) &&
                Intent(sourceIntent).setPackage(packageName).resolveActivity(packageManager) != null
        }
    }

    private fun isPackageEnabled(context: Context, packageName: String): Boolean {
        return runCatching {
            @Suppress("DEPRECATION")
            val applicationInfo = context.packageManager.getApplicationInfo(
                packageName,
                ApplicationInfoFlags.value,
            )
            applicationInfo.enabled
        }.getOrDefault(false)
    }

    private fun resolveSystemGalleryPackage(context: Context): String? {
        @Suppress("DEPRECATION")
        return context.packageManager
            .resolveActivity(buildSystemReviewIntent(), 0)
            ?.activityInfo
            ?.packageName
    }

    private fun buildSystemReviewIntent(): Intent {
        return Intent(SYSTEM_REVIEW_ACTION).apply {
            data = MediaStore.Images.Media.EXTERNAL_CONTENT_URI
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
        }
    }

    private fun isSecureReview(intent: Intent): Boolean {
        return intent.action?.contains("SECURE", ignoreCase = true) == true
    }

    private object ApplicationInfoFlags {
        @Suppress("DEPRECATION")
        val value: Int = 0
    }
}
