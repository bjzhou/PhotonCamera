package com.hinnka.mycamera.ml

import android.content.Context
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.security.MessageDigest

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
        modelSizeBytes: Int,
        modelFingerprint: String? = null
    ): MlDelegateCache? {
        return try {
            val directory = File(context.noBackupFilesDir, "${cacheName}_delegate_cache").apply {
                mkdirs()
            }
            if (!directory.isDirectory) {
                PLog.w(tag, "ML delegate cache directory is unavailable: ${directory.absolutePath}")
                return null
            }
            val fingerprint = modelFingerprint
                ?.trim()
                ?.lowercase()
                ?.takeIf { it.matches(SHA256_PATTERN) }
                ?: sha256Asset(context, modelAssetName)
            val modelToken = buildModelToken(
                cacheName = cacheName,
                modelAssetName = modelAssetName,
                modelSizeBytes = modelSizeBytes,
                modelFingerprint = fingerprint
            )
            PLog.d(tag, "ML delegate cache enabled: dir=${directory.absolutePath} token=$modelToken")
            MlDelegateCache(directory, modelToken)
        } catch (e: Exception) {
            PLog.w(tag, "Failed to prepare ML delegate cache", e)
            null
        }
    }

    private fun buildModelToken(
        cacheName: String,
        modelAssetName: String,
        modelSizeBytes: Int,
        modelFingerprint: String
    ): String {
        val safeCacheName = sanitize(cacheName)
        val safeModelName = sanitize(modelAssetName)
        return "${safeCacheName}_${safeModelName}_${modelSizeBytes}_${modelFingerprint.take(FINGERPRINT_TOKEN_LENGTH)}"
    }

    private fun sha256Asset(context: Context, modelAssetName: String): String {
        val digest = MessageDigest.getInstance("SHA-256")
        context.assets.open(modelAssetName).buffered().use { input ->
            val buffer = ByteArray(HASH_BUFFER_SIZE)
            while (true) {
                val count = input.read(buffer)
                if (count < 0) break
                if (count > 0) digest.update(buffer, 0, count)
            }
        }
        return digest.digest().joinToString(separator = "") { byte -> "%02x".format(byte) }
    }

    private fun sanitize(value: String): String {
        return value.replace(Regex("[^A-Za-z0-9_.-]"), "_")
    }

    private const val HASH_BUFFER_SIZE = 64 * 1024
    private const val FINGERPRINT_TOKEN_LENGTH = 20
    private val SHA256_PATTERN = Regex("[0-9a-fA-F]{64}")
}
