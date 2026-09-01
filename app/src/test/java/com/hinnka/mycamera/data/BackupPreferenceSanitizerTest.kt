package com.hinnka.mycamera.data

import androidx.datastore.preferences.PreferencesProto.PreferenceMap
import androidx.datastore.preferences.PreferencesProto.Value
import com.google.gson.JsonParser
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

    @Test
    fun crossDeviceRestorePreservesCurrentHardwarePreferences() {
        val restoreDir = temporaryFolder.newFolder("cross-device-restore")
        val restoredDatastoreDir = File(restoreDir, "datastore").also { it.mkdirs() }
        val restoredPreferencesFile = File(
            restoredDatastoreDir,
            "user_preferences.preferences_pb",
        )
        writePreferenceMap(
            restoredPreferencesFile,
            PreferenceMap.newBuilder()
                .putPreferences("preferred_main_camera_id", stringValue("backup-camera"))
                .putPreferences("raw_dcp_ids_by_lens", stringValue("backup-dcp-map"))
                .putPreferences("raw_color_engine", stringValue("HncsLut"))
                .putPreferences("custom_lens_ids", stringValue("backup-custom-lens"))
                .putPreferences("photo_save_path", stringValue("BACKUP_PATH"))
                .putPreferences("keep_screen_on", booleanValue(false))
                .putPreferences(
                    "custom_presets_json",
                    stringValue(
                        """[{"id":"shared","name":"Backup preset","rawDcpId":"backup-dcp","rawDcpIdsByLens":{"backup-camera":"backup-dcp"},"rawHncsProfileId":"backup-hncs","rawRenderingEngine":"HncsLut"},{"id":"backup-only","name":"Backup only","rawDcpId":"backup-dcp","rawRenderingEngine":"HncsLut"}]"""
                    ),
                )
                .build(),
        )

        val currentFilesDir = temporaryFolder.newFolder("current-files")
        val currentDatastoreDir = File(currentFilesDir, "datastore").also { it.mkdirs() }
        writePreferenceMap(
            File(currentDatastoreDir, "user_preferences.preferences_pb"),
            PreferenceMap.newBuilder()
                .putPreferences("preferred_main_camera_id", stringValue("current-camera"))
                .putPreferences("raw_dcp_ids_by_lens", stringValue("current-dcp-map"))
                .putPreferences("raw_color_engine", stringValue("AdobeCurve"))
                .putPreferences("photo_save_path", stringValue("CURRENT_PATH"))
                .putPreferences(
                    "custom_presets_json",
                    stringValue(
                        """[{"id":"shared","name":"Current preset","rawDcpId":"current-dcp","rawDcpIdsByLens":{"current-camera":"current-dcp"},"rawHncsProfileId":"current-hncs","rawRenderingEngine":"AdobeCurve"}]"""
                    ),
                )
                .build(),
        )

        val result = BackupPreferenceSanitizer.sanitizeRestoreDirectory(
            restoreDir = restoreDir,
            currentFilesDir = currentFilesDir,
            preserveCurrentDeviceSpecificPreferences = true,
        )

        val sanitizedMap = FileInputStream(restoredPreferencesFile).use(PreferenceMap::parseFrom)
        assertEquals("current-camera", sanitizedMap.preferencesMap.getValue("preferred_main_camera_id").string)
        assertEquals("current-dcp-map", sanitizedMap.preferencesMap.getValue("raw_dcp_ids_by_lens").string)
        assertEquals("AdobeCurve", sanitizedMap.preferencesMap.getValue("raw_color_engine").string)
        assertEquals("CURRENT_PATH", sanitizedMap.preferencesMap.getValue("photo_save_path").string)
        assertFalse(sanitizedMap.containsPreferences("custom_lens_ids"))
        assertFalse(sanitizedMap.preferencesMap.getValue("keep_screen_on").boolean)
        assertTrue(result.skippedDeviceSpecificPreferenceCount >= 7)

        val presets = JsonParser.parseString(
            sanitizedMap.preferencesMap.getValue("custom_presets_json").string
        ).asJsonArray
        val sharedPreset = presets[0].asJsonObject
        assertEquals("Backup preset", sharedPreset.get("name").asString)
        assertEquals("current-dcp", sharedPreset.get("rawDcpId").asString)
        assertEquals(
            "current-dcp",
            sharedPreset.getAsJsonObject("rawDcpIdsByLens").get("current-camera").asString,
        )
        assertEquals("current-hncs", sharedPreset.get("rawHncsProfileId").asString)
        assertEquals("AdobeCurve", sharedPreset.get("rawRenderingEngine").asString)
        val backupOnlyPreset = presets[1].asJsonObject
        assertFalse(backupOnlyPreset.has("rawDcpId"))
        assertFalse(backupOnlyPreset.has("rawDcpIdsByLens"))
        assertFalse(backupOnlyPreset.has("rawHncsProfileId"))
        assertFalse(backupOnlyPreset.has("rawRenderingEngine"))
    }

    @Test
    fun sameDeviceRestoreKeepsBackedUpHardwarePreferences() {
        val restoreDir = temporaryFolder.newFolder("same-device-restore")
        val datastoreDir = File(restoreDir, "datastore").also { it.mkdirs() }
        val preferencesFile = File(datastoreDir, "user_preferences.preferences_pb")
        writePreferenceMap(
            preferencesFile,
            PreferenceMap.newBuilder()
                .putPreferences("preferred_main_camera_id", stringValue("backup-camera"))
                .putPreferences("keep_screen_on", booleanValue(true))
                .build(),
        )

        BackupPreferenceSanitizer.sanitizeRestoreDirectory(
            restoreDir = restoreDir,
            currentFilesDir = temporaryFolder.newFolder("unused-current-files"),
            preserveCurrentDeviceSpecificPreferences = false,
        )

        val sanitizedMap = FileInputStream(preferencesFile).use(PreferenceMap::parseFrom)
        assertEquals("backup-camera", sanitizedMap.preferencesMap.getValue("preferred_main_camera_id").string)
        assertTrue(sanitizedMap.preferencesMap.getValue("keep_screen_on").boolean)
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

        writePreferenceMap(file, preferenceMap)
        return file
    }

    private fun writePreferenceMap(file: File, preferenceMap: PreferenceMap) {
        FileOutputStream(file).use { preferenceMap.writeTo(it) }
    }

    private fun stringValue(value: String): Value {
        return Value.newBuilder().setString(value).build()
    }

    private fun booleanValue(value: Boolean): Value {
        return Value.newBuilder().setBoolean(value).build()
    }
}
