package com.hinnka.mycamera.data

import androidx.datastore.core.DataMigration
import androidx.datastore.preferences.core.Preferences
import com.google.gson.JsonArray
import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.hinnka.mycamera.model.CameraPreset
import org.json.JSONArray
import org.json.JSONObject
import java.security.MessageDigest
import java.util.Base64

internal const val PRESET_ORDER_KEY = "preset_order_ids"
internal const val BUILT_IN_PRESET_EDIT_REVISIONS_KEY = "built_in_preset_edit_revisions"

private val builtInPresetsById = CameraPreset.BUILT_IN_PRESETS.associateBy { it.id }
private val builtInPresetRevisions by lazy {
    val digest = MessageDigest.getInstance("SHA-256")
    val encoder = Base64.getEncoder()
    builtInPresetsById.mapValues { (_, preset) ->
        val definition = JsonParser.parseString(preset.toJson()).withSortedKeys().toString()
        encoder.encodeToString(digest.digest(definition.encodeToByteArray()))
    }
}

private fun JsonElement.withSortedKeys(): JsonElement = when {
    isJsonObject -> JsonObject().also { sorted ->
        asJsonObject.entrySet().sortedBy { it.key }.forEach { (key, value) ->
            sorted.add(key, value.withSortedKeys())
        }
    }
    isJsonArray -> JsonArray().also { sorted ->
        asJsonArray.forEach { sorted.add(it.withSortedKeys()) }
    }
    else -> this
}

internal fun builtInPresetRevision(id: String): String? = builtInPresetRevisions[id]

internal val CameraPreset.isBuiltInRecord: Boolean
    get() = isBuiltIn || id.startsWith("builtin_")

private val UserPreferences.deletedBuiltInPresetIds: Set<String>
    get() = deletedBuiltInIds.split(',').filter { it.isNotEmpty() }.toSet()

internal fun UserPreferences.resolveCameraPresets(): List<CameraPreset> {
    val deletedIds = deletedBuiltInPresetIds
    val savedPresets = customPresets.associateBy { it.id }
    val editRevisions = builtInPresetEditRevisions.orEmpty()
    val available = linkedMapOf<String, CameraPreset>()
    for ((id, builtIn) in builtInPresetsById) {
        if (id in deletedIds) continue
        val editRevision = editRevisions[id]
        val savedEdit = savedPresets[id]?.takeIf {
            editRevision != null && editRevision == builtInPresetRevision(id)
        }
        available[id] = savedEdit ?: builtIn
    }
    for (preset in savedPresets.values) {
        if (!preset.isBuiltInRecord && preset.id !in builtInPresetsById && preset.id !in deletedIds) {
            available[preset.id] = preset
        }
    }
    val ordered = presetOrder.orEmpty().mapNotNull(available::remove)
    return ordered + available.values
}

internal fun readPresetOrder(json: String?): List<String>? = json?.let {
    runCatching {
        val order = JSONArray(it)
        List(order.length(), order::getString).distinct()
    }.getOrNull()
}

internal fun writePresetOrder(order: List<String>): String = JSONArray(order).toString()

internal fun readBuiltInPresetEditRevisions(json: String?): Map<String, String>? = json?.let {
    runCatching {
        val revisions = JSONObject(it)
        revisions.keys().asSequence().associateWith(revisions::getString)
    }.getOrNull()
}

internal fun writeBuiltInPresetEditRevisions(revisions: Map<String, String>): String = JSONObject(revisions).toString()

internal class PresetPreferencesMigration : DataMigration<Preferences> {
    override suspend fun shouldMigrate(currentData: Preferences): Boolean = UserPreferences(currentData).run {
        presetOrder == null || hasRetiredActivePreset()
    }

    override suspend fun migrate(currentData: Preferences): Preferences = UserPreferences(currentData).edited {
        if (presetOrder == null) {
            // The old list also held untouched built-ins whenever a user saved the order.
            // A complete catalog distinguishes that list from individually edited presets.
            val savedIds = customPresets.map { it.id }.distinct()
            val catalogs = listOf(builtInPresetsById.keys, ORIGINAL_BUILT_IN_IDS)
            val hasStoredOrder = catalogs.any { catalog ->
                val visibleIds = catalog - deletedBuiltInPresetIds
                visibleIds.isNotEmpty() && savedIds.containsAll(visibleIds)
            }
            presetOrder = if (hasStoredOrder) {
                savedIds.filter { it in builtInPresetsById || !it.startsWith("builtin_") }
            } else {
                emptyList()
            }
        }
        if (hasRetiredActivePreset()) activePresetId = null
    }.raw

    override suspend fun cleanUp() = Unit

    private fun UserPreferences.hasRetiredActivePreset(): Boolean =
        activePresetId?.let { it.startsWith("builtin_") && it !in builtInPresetsById } == true

    private companion object {
        // These were present in every legacy catalog that included Portrait Style.
        val ORIGINAL_BUILT_IN_IDS = setOf(
            "builtin_portrait",
            "builtin_leica_m9_moment",
            "builtin_cinematic",
            "builtin_classic_film",
            "builtin_monochrome",
        )
    }
}
