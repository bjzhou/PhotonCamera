package com.hinnka.mycamera.ml

import android.content.Context
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog
import java.io.File

internal data class MlDelegateCache(
    val directory: File,
    val modelToken: String
)

internal object MlDelegateCacheFactory {
    fun create(
        context: Context,
        tag: String,
        cacheName: String,
        modelAssetName: String,
        modelSizeBytes: Int
    ): MlDelegateCache? {
        return try {
            val directory = File(context.noBackupFilesDir, "${cacheName}_delegate_cache").apply {
                mkdirs()
            }
            if (!directory.isDirectory) {
                PLog.w(tag, "ML delegate cache directory is unavailable: ${directory.absolutePath}")
                return null
            }
            val modelToken = buildModelToken(cacheName, modelAssetName, modelSizeBytes)
            PLog.d(tag, "ML delegate cache enabled: dir=${directory.absolutePath} token=$modelToken")
            MlDelegateCache(directory, modelToken)
        } catch (e: Exception) {
            PLog.w(tag, "Failed to prepare ML delegate cache", e)
            null
        }
    }

    private fun buildModelToken(cacheName: String, modelAssetName: String, modelSizeBytes: Int): String {
        val safeCacheName = sanitize(cacheName)
        val safeModelName = sanitize(modelAssetName)
        return "${safeCacheName}_${safeModelName}_v${BuildConfig.VERSION_CODE}_$modelSizeBytes"
    }

    private fun sanitize(value: String): String {
        return value.replace(Regex("[^A-Za-z0-9_.-]"), "_")
    }
}
