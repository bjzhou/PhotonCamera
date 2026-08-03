package com.hinnka.mycamera.camera

import org.json.JSONArray
import org.json.JSONObject

/**
 * User-defined Camera2 vendor keys.
 *
 * A null [lensId] means that the key applies to every lens. Lens-specific keys
 * are evaluated after global keys so an explicitly targeted value can override
 * a global value with the same key name.
 */
data class CustomVendorKey(
    val id: String,
    val keyName: String,
    val target: CustomVendorKeyTarget,
    val valueType: CustomVendorKeyValueType,
    val value: Int,
    val lensId: String? = null
) {
    val normalizedValue: Int
        get() = valueType.normalize(value)

    fun appliesTo(cameraId: String): Boolean = lensId == null || lensId == cameraId

    fun normalized(): CustomVendorKey = copy(
        keyName = keyName.trim(),
        value = normalizedValue,
        lensId = lensId?.trim()?.takeIf { it.isNotEmpty() }
    )

    internal fun toJsonObject(): JSONObject {
        val normalized = normalized()
        return JSONObject().apply {
            put(KEY_ID, normalized.id)
            put(KEY_NAME, normalized.keyName)
            put(KEY_TARGET, normalized.target.name)
            put(KEY_VALUE_TYPE, normalized.valueType.name)
            put(KEY_VALUE, normalized.value)
            normalized.lensId?.let { put(KEY_LENS_ID, it) }
        }
    }

    companion object {
        private const val KEY_ID = "id"
        private const val KEY_NAME = "key_name"
        private const val KEY_TARGET = "target"
        private const val KEY_VALUE_TYPE = "value_type"
        private const val KEY_VALUE = "value"
        private const val KEY_LENS_ID = "lens_id"

        internal fun fromJsonObject(json: JSONObject): CustomVendorKey? {
            val id = json.optString(KEY_ID).trim()
            val keyName = json.optString(KEY_NAME).trim()
            if (id.isEmpty() || !isValidKeyName(keyName) || !json.has(KEY_VALUE)) return null

            val target = runCatching {
                CustomVendorKeyTarget.valueOf(json.optString(KEY_TARGET))
            }.getOrNull() ?: return null
            val valueType = runCatching {
                CustomVendorKeyValueType.valueOf(json.optString(KEY_VALUE_TYPE))
            }.getOrNull() ?: return null
            val lensId = json.optString(KEY_LENS_ID)
                .trim()
                .takeIf {
                    json.has(KEY_LENS_ID) &&
                        !json.isNull(KEY_LENS_ID) &&
                        it.isNotEmpty()
                }

            return CustomVendorKey(
                id = id,
                keyName = keyName,
                target = target,
                valueType = valueType,
                value = valueType.normalize(json.optInt(KEY_VALUE)),
                lensId = lensId
            )
        }

        fun isValidKeyName(value: String): Boolean {
            val normalized = value.trim()
            return normalized.isNotEmpty() &&
                normalized.all { !it.isWhitespace() && !it.isISOControl() }
        }
    }
}

data class CustomVendorKeySettings(
    val keys: List<CustomVendorKey> = emptyList()
) {
    val isEnabled: Boolean
        get() = keys.isNotEmpty()

    fun keysFor(cameraId: String, target: CustomVendorKeyTarget): List<CustomVendorKey> {
        return keys
            .asSequence()
            .filter { it.target == target && it.appliesTo(cameraId) }
            .sortedBy { it.lensId != null }
            .toList()
    }

    fun upsert(key: CustomVendorKey): CustomVendorKeySettings {
        val normalized = key.normalized()
        if (
            normalized.id.isBlank() ||
            !CustomVendorKey.isValidKeyName(normalized.keyName)
        ) {
            return this
        }
        return CustomVendorKeySettings(
            keys.filterNot { it.id == normalized.id } + normalized
        )
    }

    fun remove(id: String): CustomVendorKeySettings {
        return CustomVendorKeySettings(keys.filterNot { it.id == id })
    }

    fun serialize(): String {
        return JSONArray().apply {
            keys.forEach { put(it.toJsonObject()) }
        }.toString()
    }

    companion object {
        val Empty = CustomVendorKeySettings()

        fun deserialize(value: String?): CustomVendorKeySettings {
            if (value.isNullOrBlank()) return Empty
            val array = runCatching { JSONArray(value) }.getOrNull() ?: return Empty
            val parsed = buildList<CustomVendorKey> {
                for (index in 0 until array.length()) {
                    val key = array.optJSONObject(index)?.let(CustomVendorKey::fromJsonObject)
                    key ?: continue
                    if (none { it.id == key.id }) add(key)
                }
            }
            return CustomVendorKeySettings(parsed)
        }
    }
}

enum class CustomVendorKeyTarget {
    CAPTURE_REQUEST,
    SESSION_PARAMETER
}

enum class CustomVendorKeyValueType {
    INT32,
    U8;

    fun normalize(value: Int): Int {
        return when (this) {
            INT32 -> value
            U8 -> value.coerceIn(UByte.MIN_VALUE.toInt(), UByte.MAX_VALUE.toInt())
        }
    }

    fun isValid(value: Int): Boolean = normalize(value) == value
}
