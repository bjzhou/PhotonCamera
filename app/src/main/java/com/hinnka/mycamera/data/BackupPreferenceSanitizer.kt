package com.hinnka.mycamera.data

import androidx.datastore.preferences.PreferencesProto.PreferenceMap
import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.OutputStream
import java.util.UUID

internal object BackupPreferenceSanitizer {
    const val USER_PREFERENCES_ENTRY = "datastore/user_preferences.preferences_pb"
    private const val CUSTOM_PRESETS_KEY = "custom_presets_json"
    private val presetPreferenceKeys = setOf(
        CUSTOM_PRESETS_KEY,
        "active_preset_id",
        "deleted_built_in_ids",
    )

    data class RestoreResult(
        val removedNonPortablePreferenceCount: Int = 0,
        val skippedDeviceSpecificPreferenceCount: Int = 0,
    )

    private val nonPortablePreferenceKeys = setOf(
        "photo_save_path",
        "photo_save_tree_uri",
        "video_recording_path",
        "video_recording_tree_uri",
        "openai_api_key",
        "openai_api_key_encrypted_v1",
    )

    /**
     * Values that contain identifiers, calibration, or compatibility overrides for the physical
     * camera/audio hardware. Generic feature choices (for example RAW or video resolution) remain
     * portable and are deliberately not included here.
     */
    private val deviceSpecificPreferenceKeys = setOf(
        "raw_dcp_id",
        "raw_dcp_ids_by_lens",
        "raw_noise_profile_id",
        "raw_noise_profile_ids_by_lens",
        "raw_hncs_profile_id",
        "raw_color_engine",
        "raw_black_level_modes",
        "raw_custom_black_levels",
        "raw_white_level_modes",
        "raw_custom_white_levels",
        "raw_cfa_correction_modes",
        "raw_lens_shading_correction_enabled",
        "vendor_capture_settings",
        "custom_vendor_key_settings",
        "camera_orientation_offsets",
        "default_focal_length",
        "custom_focal_lengths",
        "custom_lens_ids",
        "lens_id_blacklist",
        "isz_lens_configs",
        "preferred_main_camera_id",
        "preferred_macro_camera_id",
        "enable_logical_multi_camera_discovery",
        "logical_camera_binding_whitelist",
        "hidden_focal_lengths",
        "video_audio_input_id",
        "oppo_super_stabilization_enabled",
        "camera_startup_defaults_restored_v1",
        BuiltInDeviceConfigurationMigration.APPLIED_DEVICE_KEY_NAME,
    )

    private val deviceSpecificPresetFields = setOf(
        "rawDcpId",
        "rawDcpIdsByLens",
        "rawHncsProfileId",
        "rawRenderingEngine",
    )

    private val gson = Gson()

    fun isUserPreferencesEntry(entryName: String): Boolean {
        return entryName.replace('\\', '/').trimStart('/') == USER_PREFERENCES_ENTRY
    }

    fun writeUserPreferencesWithoutNonPortableKeys(
        preferencesFile: File,
        output: OutputStream,
        includeSettings: Boolean = true,
        includePresets: Boolean = true,
    ): Int {
        val (preferenceMap, removedCount) = readPreferenceMapWithoutNonPortableKeys(preferencesFile)
        val builder = preferenceMap.toBuilder()
        removeKeys(
            builder,
            preferenceMap.preferencesMap.keys.filterTo(mutableSetOf()) { key ->
                if (key in presetPreferenceKeys) !includePresets else !includeSettings
            },
        )
        builder.build().writeTo(output)
        return removedCount
    }

    fun sanitizeRestoreDirectory(restoreDir: File): Int {
        return sanitizeRestoreDirectory(
            restoreDir = restoreDir,
            currentFilesDir = null,
            preserveCurrentDeviceSpecificPreferences = false,
        ).removedNonPortablePreferenceCount
    }

    fun sanitizeRestoreDirectory(
        restoreDir: File,
        currentFilesDir: File?,
        preserveCurrentDeviceSpecificPreferences: Boolean,
        restoreSettings: Boolean = true,
        restorePresets: Boolean = true,
    ): RestoreResult {
        val preferencesFile = File(restoreDir, USER_PREFERENCES_ENTRY)
        if (!preferencesFile.isFile) {
            return RestoreResult()
        }
        require(restoreSettings || restorePresets) {
            "Backup contains user preferences outside its selected categories"
        }

        val restoredBuilder = FileInputStream(preferencesFile).use { input ->
            PreferenceMap.parseFrom(input).toBuilder()
        }
        val currentPreferenceMap = currentFilesDir
            ?.let { File(it, USER_PREFERENCES_ENTRY) }
            ?.takeIf(File::isFile)
            ?.let { currentFile ->
                FileInputStream(currentFile).use(PreferenceMap::parseFrom)
            }
        // Replace only the selected group, including deletions, and retain the other group exactly.
        val preservedKeys = (restoredBuilder.preferencesMap.keys +
            currentPreferenceMap?.preferencesMap.orEmpty().keys).filterTo(mutableSetOf()) { key ->
            if (key in presetPreferenceKeys) !restorePresets else !restoreSettings
        }
        preserveCurrentValues(restoredBuilder, currentPreferenceMap, preservedKeys)
        val removedCount = if (restoreSettings) preserveCurrentValues(
            restoredBuilder = restoredBuilder,
            currentPreferenceMap = currentPreferenceMap,
            keys = nonPortablePreferenceKeys,
        ) else 0
        var skippedDeviceSpecificCount = 0

        if (preserveCurrentDeviceSpecificPreferences) {
            if (restoreSettings) {
                skippedDeviceSpecificCount += preserveCurrentValues(
                    restoredBuilder = restoredBuilder,
                    currentPreferenceMap = currentPreferenceMap,
                    keys = deviceSpecificPreferenceKeys,
                )
            }
            if (restorePresets) {
                skippedDeviceSpecificCount += preserveCurrentPresetDeviceFields(
                    restoredBuilder = restoredBuilder,
                    currentPreferenceMap = currentPreferenceMap,
                )
            }
        }

        if (
            removedCount == 0 &&
            currentFilesDir == null &&
            !preserveCurrentDeviceSpecificPreferences && restoreSettings && restorePresets
        ) {
            return RestoreResult()
        }

        replacePreferencesFile(preferencesFile, restoredBuilder.build())

        return RestoreResult(
            removedNonPortablePreferenceCount = removedCount,
            skippedDeviceSpecificPreferenceCount = skippedDeviceSpecificCount,
        )
    }

    private fun preserveCurrentValues(
        restoredBuilder: PreferenceMap.Builder,
        currentPreferenceMap: PreferenceMap?,
        keys: Set<String>,
    ): Int {
        var skippedCount = 0
        for (key in keys) {
            if (restoredBuilder.containsPreferences(key)) {
                skippedCount++
            }
            val currentValue = currentPreferenceMap?.preferencesMap?.get(key)
            if (currentValue != null) {
                restoredBuilder.putPreferences(key, currentValue)
            } else {
                restoredBuilder.removePreferences(key)
            }
        }
        return skippedCount
    }

    private fun preserveCurrentPresetDeviceFields(
        restoredBuilder: PreferenceMap.Builder,
        currentPreferenceMap: PreferenceMap?,
    ): Int {
        val restoredValue = restoredBuilder.preferencesMap[CUSTOM_PRESETS_KEY]
            ?.takeIf { it.hasString() }
            ?: return 0
        val restoredPresets = runCatching {
            JsonParser.parseString(restoredValue.string).asJsonArray
        }.getOrNull() ?: return 0
        val currentPresetsById = currentPreferenceMap
            ?.preferencesMap
            ?.get(CUSTOM_PRESETS_KEY)
            ?.takeIf { it.hasString() }
            ?.let { value ->
                runCatching { JsonParser.parseString(value.string).asJsonArray }
                    .getOrNull()
                    ?.mapNotNull { element ->
                        element.takeIf { it.isJsonObject }
                            ?.asJsonObject
                            ?.let { preset -> preset.string("id")?.let { it to preset } }
                    }
                    ?.toMap()
            }
            .orEmpty()

        var skippedCount = 0
        var changed = false
        restoredPresets.forEach { element ->
            if (!element.isJsonObject) return@forEach
            val restoredPreset = element.asJsonObject
            val currentPreset = restoredPreset.string("id")?.let(currentPresetsById::get)
            for (field in deviceSpecificPresetFields) {
                if (restoredPreset.has(field)) {
                    skippedCount++
                }
                val currentField = currentPreset?.get(field)
                if (currentField != null) {
                    if (restoredPreset.get(field) != currentField) {
                        restoredPreset.add(field, currentField.deepCopy())
                        changed = true
                    }
                } else if (restoredPreset.remove(field) != null) {
                    changed = true
                }
            }
        }

        if (changed) {
            restoredBuilder.putPreferences(
                CUSTOM_PRESETS_KEY,
                restoredValue.toBuilder().setString(gson.toJson(restoredPresets)).build(),
            )
        }
        return skippedCount
    }

    private fun JsonObject.string(name: String): String? {
        return get(name)
            ?.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString }
            ?.asString
            ?.takeIf(String::isNotBlank)
    }

    private fun removeKeys(builder: PreferenceMap.Builder, keys: Set<String>): Int {
        var removedCount = 0
        for (key in keys) {
            if (builder.containsPreferences(key)) {
                builder.removePreferences(key)
                removedCount++
            }
        }
        return removedCount
    }

    private fun replacePreferencesFile(preferencesFile: File, preferenceMap: PreferenceMap) {
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
    }

    private fun readPreferenceMapWithoutNonPortableKeys(file: File): Pair<PreferenceMap, Int> {
        val builder = FileInputStream(file).use { input ->
            PreferenceMap.parseFrom(input).toBuilder()
        }

        val removedCount = removeKeys(builder, nonPortablePreferenceKeys)

        return builder.build() to removedCount
    }
}
