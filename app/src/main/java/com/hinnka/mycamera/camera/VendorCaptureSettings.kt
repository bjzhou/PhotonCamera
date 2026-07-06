package com.hinnka.mycamera.camera

import org.json.JSONObject

/**
 * Vendor-specific capture request overrides for experimental ISZ/DCG controls.
 *
 * Values are applied only to still capture requests. Unsupported keys can make
 * some HALs fail the capture request, so keep this model opt-in per key.
 */
data class VendorCaptureSettings(
    val values: Map<VendorCaptureKey, Int> = emptyMap()
) {
    val isEnabled: Boolean
        get() = values.isNotEmpty()

    fun isEnabled(key: VendorCaptureKey): Boolean = values.containsKey(key)

    fun valueFor(key: VendorCaptureKey): Int = values[key] ?: key.defaultValue

    fun withOverride(key: VendorCaptureKey, enabled: Boolean, value: Int = valueFor(key)): VendorCaptureSettings {
        val updated = values.toMutableMap()
        if (enabled) {
            updated[key] = key.normalizeValue(value)
        } else {
            updated.remove(key)
        }
        return VendorCaptureSettings(updated.toMap())
    }

    fun withValue(key: VendorCaptureKey, value: Int): VendorCaptureSettings {
        if (!isEnabled(key)) return this
        return withOverride(key, enabled = true, value = value)
    }

    internal fun toJsonObject(): JSONObject {
        return JSONObject().apply {
            VendorCaptureKey.entries.forEach { key ->
                values[key]?.let { put(key.persistedName, it) }
            }
        }
    }

    companion object {
        val Empty = VendorCaptureSettings()

        internal fun fromJsonObject(json: JSONObject): VendorCaptureSettings {
            val parsedValues = VendorCaptureKey.entries
                .mapNotNull { key ->
                    if (!json.has(key.persistedName)) return@mapNotNull null
                    key to key.normalizeValue(json.optInt(key.persistedName))
                }
                .toMap()
            return VendorCaptureSettings(parsedValues)
        }
    }
}

data class VendorCaptureSettingsByLens(
    val settingsByLensId: Map<String, VendorCaptureSettings> = emptyMap()
) {
    val isEnabled: Boolean
        get() = settingsByLensId.isNotEmpty()

    fun settingsFor(lensId: String): VendorCaptureSettings {
        return settingsByLensId[lensId] ?: VendorCaptureSettings.Empty
    }

    fun withSettings(lensId: String, settings: VendorCaptureSettings): VendorCaptureSettingsByLens {
        if (lensId.isBlank()) return this
        val updated = settingsByLensId.toMutableMap()
        if (settings.isEnabled) {
            updated[lensId] = settings
        } else {
            updated.remove(lensId)
        }
        return VendorCaptureSettingsByLens(updated.toMap())
    }

    fun serialize(): String {
        return JSONObject().apply {
            settingsByLensId.forEach { (lensId, settings) ->
                if (settings.isEnabled) {
                    put(lensId, settings.toJsonObject())
                }
            }
        }.toString()
    }

    companion object {
        val Empty = VendorCaptureSettingsByLens()

        fun deserialize(value: String?): VendorCaptureSettingsByLens {
            if (value.isNullOrBlank()) return Empty
            val root = runCatching { JSONObject(value) }.getOrNull() ?: return Empty
            val parsedSettings = mutableMapOf<String, VendorCaptureSettings>()
            val keys = root.keys()
            while (keys.hasNext()) {
                val lensId = keys.next()
                val settingsObject = root.optJSONObject(lensId) ?: continue
                val settings = VendorCaptureSettings.fromJsonObject(settingsObject)
                if (settings.isEnabled) {
                    parsedSettings[lensId] = settings
                }
            }
            return VendorCaptureSettingsByLens(parsedSettings)
        }
    }
}

enum class VendorCaptureKey(
    val persistedName: String,
    val requestKeyName: String,
    val valueType: VendorCaptureValueType,
    val defaultValue: Int
) {
    INSENSOR_ZOOM(
        persistedName = "insensor_zoom",
        requestKeyName = "org.codeaurora.qcamera3.sessionParameters.EnableInsensorZoom",
        valueType = VendorCaptureValueType.INT,
        defaultValue = 1
    ),
    QCOM_SENSOR_CURRENT_MODE(
        persistedName = "qcom_sensor_current_mode",
        requestKeyName = "org.codeaurora.qcamera3.sensor_meta_data.current_mode",
        valueType = VendorCaptureValueType.INT,
        defaultValue = 0
    ),
    VIVO_FORCE_SENSOR_MODE(
        persistedName = "vivo_force_sensor_mode",
        requestKeyName = "vivo.control.forceSensorMode",
        valueType = VendorCaptureValueType.INT,
        defaultValue = 1
    ),
    OPLUS_AGINGTEST_MODE_SELECT(
        persistedName = "oplus_agingtest_mode_select",
        requestKeyName = "com.oplus.engineercamera.agingtest.mode.select",
        valueType = VendorCaptureValueType.BYTE,
        defaultValue = 0
    );

    fun normalizeValue(value: Int): Int {
        return when (valueType) {
            VendorCaptureValueType.INT -> value
            VendorCaptureValueType.BYTE -> value.coerceIn(Byte.MIN_VALUE.toInt(), Byte.MAX_VALUE.toInt())
        }
    }

    companion object {
        fun fromPersistedName(name: String): VendorCaptureKey? {
            return entries.firstOrNull { it.persistedName == name }
        }
    }
}

enum class VendorCaptureValueType {
    INT,
    BYTE
}
