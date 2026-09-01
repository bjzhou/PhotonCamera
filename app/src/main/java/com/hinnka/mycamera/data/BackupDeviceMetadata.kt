package com.hinnka.mycamera.data

import com.google.gson.GsonBuilder
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.io.File
import java.io.OutputStream
import java.util.Locale

internal data class BackupDeviceIdentity(
    val manufacturer: String,
    val model: String,
    val device: String,
) {
    fun matches(other: BackupDeviceIdentity): Boolean {
        return normalized(manufacturer) == normalized(other.manufacturer) &&
            normalized(model) == normalized(other.model) &&
            normalized(device) == normalized(other.device)
    }

    private fun normalized(value: String): String {
        return value.trim().lowercase(Locale.ROOT)
    }
}

internal object BackupDeviceMetadata {
    const val ENTRY_NAME = "backup_manifest.json"

    private const val SCHEMA_VERSION = 1
    private val gson = GsonBuilder().setPrettyPrinting().create()

    fun write(identity: BackupDeviceIdentity, output: OutputStream) {
        val root = JsonObject().apply {
            addProperty("schema_version", SCHEMA_VERSION)
            add(
                "device",
                JsonObject().apply {
                    addProperty("manufacturer", identity.manufacturer)
                    addProperty("model", identity.model)
                    addProperty("device", identity.device)
                },
            )
        }
        output.write(gson.toJson(root).toByteArray(Charsets.UTF_8))
    }

    fun read(restoreDir: File): BackupDeviceIdentity? {
        val metadataFile = File(restoreDir, ENTRY_NAME)
        if (!metadataFile.isFile) return null

        return runCatching {
            val root = metadataFile.reader(Charsets.UTF_8).use(JsonParser::parseReader).asJsonObject
            if (root.get("schema_version")?.asInt != SCHEMA_VERSION) return@runCatching null
            val device = root.getAsJsonObject("device") ?: return@runCatching null
            BackupDeviceIdentity(
                manufacturer = device.requiredString("manufacturer"),
                model = device.requiredString("model"),
                device = device.requiredString("device"),
            )
        }.getOrNull()
    }

    private fun JsonObject.requiredString(name: String): String {
        return get(name)
            ?.takeIf { it.isJsonPrimitive && it.asJsonPrimitive.isString }
            ?.asString
            ?.takeIf { it.isNotBlank() }
            ?: error("Missing backup device metadata field: $name")
    }
}
