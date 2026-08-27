package com.hinnka.mycamera.data

import androidx.datastore.preferences.PreferencesProto.PreferenceMap
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.OutputStream
import java.util.UUID

internal object BackupPreferenceSanitizer {
    private const val USER_PREFERENCES_ENTRY = "datastore/user_preferences.preferences_pb"

    private val nonPortablePreferenceKeys = setOf(
        "photo_save_path",
        "photo_save_tree_uri",
        "video_recording_path",
        "video_recording_tree_uri",
        "openai_api_key",
        "openai_api_key_encrypted_v1",
    )

    fun isUserPreferencesEntry(entryName: String): Boolean {
        return entryName.replace('\\', '/').trimStart('/') == USER_PREFERENCES_ENTRY
    }

    fun writeUserPreferencesWithoutNonPortableKeys(
        preferencesFile: File,
        output: OutputStream
    ): Int {
        val (preferenceMap, removedCount) = readPreferenceMapWithoutNonPortableKeys(preferencesFile)
        preferenceMap.writeTo(output)
        return removedCount
    }

    fun sanitizeRestoreDirectory(restoreDir: File): Int {
        val preferencesFile = File(restoreDir, USER_PREFERENCES_ENTRY)
        if (!preferencesFile.isFile) {
            return 0
        }

        val (preferenceMap, removedCount) = readPreferenceMapWithoutNonPortableKeys(preferencesFile)
        if (removedCount == 0) {
            return 0
        }

        val tempFile = File(
            preferencesFile.parentFile,
            "${preferencesFile.name}.${UUID.randomUUID()}.tmp"
        )
        try {
            FileOutputStream(tempFile).use { output ->
                preferenceMap.writeTo(output)
            }
            if (!preferencesFile.delete()) {
                throw IllegalStateException("Cannot replace restored preferences file: $preferencesFile")
            }
            if (!tempFile.renameTo(preferencesFile)) {
                tempFile.copyTo(preferencesFile, overwrite = true)
                tempFile.delete()
            }
        } finally {
            if (tempFile.exists()) {
                tempFile.delete()
            }
        }

        return removedCount
    }

    private fun readPreferenceMapWithoutNonPortableKeys(file: File): Pair<PreferenceMap, Int> {
        val builder = FileInputStream(file).use { input ->
            PreferenceMap.parseFrom(input).toBuilder()
        }

        var removedCount = 0
        for (key in nonPortablePreferenceKeys) {
            if (builder.containsPreferences(key)) {
                builder.removePreferences(key)
                removedCount++
            }
        }

        return builder.build() to removedCount
    }
}
