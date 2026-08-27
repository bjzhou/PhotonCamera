package com.hinnka.mycamera.data

import androidx.datastore.preferences.PreferencesProto.PreferenceMap
import androidx.datastore.preferences.PreferencesProto.Value
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream

class BackupPreferenceSanitizerTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    @Test
    fun writeUserPreferencesWithoutNonPortableKeysRemovesDeviceBoundValues() {
        val preferencesFile = writeUserPreferencesFile(temporaryFolder.newFile("user_preferences.preferences_pb"))

        val output = ByteArrayOutputStream()
        val removedCount = BackupPreferenceSanitizer.writeUserPreferencesWithoutNonPortableKeys(
            preferencesFile,
            output
        )

        val sanitizedMap = PreferenceMap.parseFrom(output.toByteArray())
        assertEquals(6, removedCount)
        assertFalse(sanitizedMap.containsPreferences("photo_save_path"))
        assertFalse(sanitizedMap.containsPreferences("photo_save_tree_uri"))
        assertFalse(sanitizedMap.containsPreferences("video_recording_path"))
        assertFalse(sanitizedMap.containsPreferences("video_recording_tree_uri"))
        assertFalse(sanitizedMap.containsPreferences("openai_api_key"))
        assertFalse(sanitizedMap.containsPreferences("openai_api_key_encrypted_v1"))
        assertTrue(sanitizedMap.containsPreferences("keep_screen_on"))
    }

    @Test
    fun sanitizeRestoreDirectoryRewritesRestoredUserPreferences() {
        val restoreDir = temporaryFolder.newFolder("restore")
        val datastoreDir = File(restoreDir, "datastore").also { it.mkdirs() }
        val preferencesFile = writeUserPreferencesFile(File(datastoreDir, "user_preferences.preferences_pb"))

        val removedCount = BackupPreferenceSanitizer.sanitizeRestoreDirectory(restoreDir)

        val sanitizedMap = FileInputStream(preferencesFile).use { PreferenceMap.parseFrom(it) }
        assertEquals(6, removedCount)
        assertFalse(sanitizedMap.containsPreferences("photo_save_path"))
        assertFalse(sanitizedMap.containsPreferences("photo_save_tree_uri"))
        assertFalse(sanitizedMap.containsPreferences("video_recording_path"))
        assertFalse(sanitizedMap.containsPreferences("video_recording_tree_uri"))
        assertFalse(sanitizedMap.containsPreferences("openai_api_key"))
        assertFalse(sanitizedMap.containsPreferences("openai_api_key_encrypted_v1"))
        assertTrue(sanitizedMap.containsPreferences("keep_screen_on"))
    }

    private fun writeUserPreferencesFile(file: File): File {
        val preferenceMap = PreferenceMap.newBuilder()
            .putPreferences("photo_save_path", stringValue("EXTERNAL_TREE"))
            .putPreferences("photo_save_tree_uri", stringValue("content://photo/tree"))
            .putPreferences("video_recording_path", stringValue("EXTERNAL_TREE"))
            .putPreferences("video_recording_tree_uri", stringValue("content://video/tree"))
            .putPreferences("openai_api_key", stringValue("legacy-plaintext-value"))
            .putPreferences("openai_api_key_encrypted_v1", stringValue("keystore:v1:encrypted-value"))
            .putPreferences("keep_screen_on", booleanValue(true))
            .build()

        FileOutputStream(file).use { preferenceMap.writeTo(it) }
        return file
    }

    private fun stringValue(value: String): Value {
        return Value.newBuilder().setString(value).build()
    }

    private fun booleanValue(value: Boolean): Value {
        return Value.newBuilder().setBoolean(value).build()
    }
}
