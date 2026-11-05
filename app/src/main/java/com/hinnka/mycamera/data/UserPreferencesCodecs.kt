package com.hinnka.mycamera.data

import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.stringPreferencesKey
import com.hinnka.mycamera.MyCameraApplication
import com.hinnka.mycamera.R
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.model.CameraPreset
import com.hinnka.mycamera.raw.SpectralFilmTuning
import org.json.JSONArray
import org.json.JSONObject

// UserPreferences 字段的解析 / 序列化函数，Repository 的写入方法与 UserPreferences 的读取共用。

/** 内置分类在当前语言下的显示名；持久化时以稳定标识存储。 */
internal fun builtInCategoryLabel(): String = MyCameraApplication.instance.getString(R.string.built_in)

/**
 * 解析摄像头方向偏移字符串
 * 格式：cameraId1:offset1,cameraId2:offset2
 */
internal fun parseCameraOrientationOffsets(value: String?): Map<String, Int> {
    if (value.isNullOrEmpty()) return emptyMap()
    return value.split(",")
        .mapNotNull { entry ->
            val separatorIndex = entry.lastIndexOf(":")
            if (separatorIndex <= 0 || separatorIndex == entry.lastIndex) return@mapNotNull null
            val cameraId = entry.substring(0, separatorIndex)
            val offset = entry.substring(separatorIndex + 1).toIntOrNull()
            if (offset != null && offset in listOf(0, 90, 180, 270)) {
                cameraId to offset
            } else null
        }
        .toMap()
}

/**
 * 序列化摄像头方向偏移为字符串
 */
internal fun serializeCameraOrientationOffsets(offsets: Map<String, Int>): String {
    return offsets.entries
        .filter { it.value in listOf(0, 90, 180, 270) }
        .joinToString(",") { "${it.key}:${it.value}" }
}

internal fun parseMapString(value: String?): Map<String, String> {
    if (value.isNullOrEmpty()) return emptyMap()
    return value.split(",")
        .mapNotNull { entry ->
            val separatorIndex = entry.lastIndexOf(":")
            if (separatorIndex <= 0 || separatorIndex == entry.lastIndex) return@mapNotNull null
            entry.substring(0, separatorIndex) to entry.substring(separatorIndex + 1)
        }
        .toMap()
}

internal fun serializeMapString(map: Map<String, String>): String {
    return map.entries.joinToString(",") { "${it.key}:${it.value}" }
}

internal fun parseNullableStringMap(value: String?): Map<String, String?> {
    if (value.isNullOrEmpty()) return emptyMap()
    return runCatching {
        val root = JSONObject(value)
        buildMap {
            val keys = root.keys()
            while (keys.hasNext()) {
                val key = keys.next()
                if (key.isBlank()) continue
                val rawValue = if (root.isNull(key)) null else root.optString(key)
                put(key, rawValue?.takeIf { it.isNotBlank() })
            }
        }
    }.map { CameraPreset.normalizeRawDcpIdsByLens(it) }.getOrDefault(emptyMap())
}

internal fun serializeNullableStringMap(map: Map<String, String?>): String {
    val root = JSONObject()
    CameraPreset.normalizeRawDcpIdsByLens(map).forEach { (key, value) ->
        root.put(key, value ?: JSONObject.NULL)
    }
    return root.toString()
}

internal fun parseMapFloat(value: String?): Map<String, Float> {
    if (value.isNullOrEmpty()) return emptyMap()
    return value.split(",")
        .mapNotNull { entry ->
            val separatorIndex = entry.lastIndexOf(":")
            if (separatorIndex <= 0 || separatorIndex == entry.lastIndex) return@mapNotNull null
            val key = entry.substring(0, separatorIndex)
            val floatValue = entry.substring(separatorIndex + 1).toFloatOrNull()
            if (floatValue != null) key to floatValue else null
        }
        .toMap()
}

internal fun serializeMapFloat(map: Map<String, Float>): String {
    return map.entries.joinToString(",") { "${it.key}:${it.value}" }
}

internal fun parseSpectralFilmTunings(value: String?): Map<String, SpectralFilmTuning> {
    if (value.isNullOrEmpty()) return emptyMap()
    return value.split(",")
        .mapNotNull { entry ->
            val parts = entry.split(":")
            if (parts.size == 4) {
                val c = parts[1].toFloatOrNull()
                val m = parts[2].toFloatOrNull()
                val y = parts[3].toFloatOrNull()
                if (c != null && m != null && y != null) {
                    parts[0] to SpectralFilmTuning(c, m, y).normalized()
                } else {
                    null
                }
            } else {
                null
            }
        }
        .toMap()
}

internal fun serializeSpectralFilmTunings(map: Map<String, SpectralFilmTuning>): String {
    return map.entries.joinToString(",") { (stock, tuning) ->
        val t = tuning.normalized()
        "$stock:${t.cDensityGain}:${t.mDensityGain}:${t.yDensityGain}"
    }
}

internal fun parseLensIds(value: String?): List<String> {
    if (value.isNullOrBlank()) return emptyList()
    return value.split(",")
        .map { it.trim() }
        .filter { it.isNotEmpty() }
        .distinct()
}

internal fun parseLogicalCameraBindingWhitelist(value: String?): List<String> {
    if (value.isNullOrBlank()) return emptyList()
    return normalizeLogicalCameraBindingWhitelist(value.split(","))
}

internal fun normalizeLogicalCameraBindingWhitelist(values: Iterable<String>): List<String> {
    val normalizedBindings = mutableListOf<Pair<String, String>>()
    values.forEach { value ->
        val parts = value.trim().split("/", limit = 2)
        if (parts.size != 2) return@forEach

        val logicalCameraId = parts[0].trim()
        val physicalCameraId = parts[1].trim()
        if (logicalCameraId.isEmpty() || physicalCameraId.isEmpty()) {
            return@forEach
        }

        val existingIndex = normalizedBindings.indexOfFirst { it.second == physicalCameraId }
        if (existingIndex >= 0) {
            normalizedBindings.removeAt(existingIndex)
        }
        normalizedBindings.add(logicalCameraId to physicalCameraId)
    }
    return normalizedBindings.map { (logicalCameraId, physicalCameraId) ->
        "$logicalCameraId/$physicalCameraId"
    }
}

internal fun parseRawLuts(preferences: Preferences): Map<String, String> {
    val result = mutableMapOf<String, String>()
    TransferCurve.entries.forEach { entry ->
        val default = when (entry) {
            TransferCurve.FLOG2 -> "PROVIA.plut"
            TransferCurve.SRGB -> "none"
            TransferCurve.LINEAR -> "none"
            else -> "sRGB.plut"
        }
        val value = preferences[stringPreferencesKey("${entry.name}_raw_lut")] ?: default
        result[entry.name] = value
    }
    return result
}

internal fun parseCustomAspectRatios(value: String?): List<AspectRatio> {
    if (value.isNullOrBlank()) {
        return emptyList()
    }
    return AspectRatio.sanitizeCustomRatios(
        value.split(",")
            .mapNotNull { name -> AspectRatio.valueOfOrNull(name) }
    )
}

internal fun parseTopSheetAspectRatios(
    value: String?,
    availableAspectRatios: List<AspectRatio>
): List<AspectRatio> {
    if (value.isNullOrBlank()) {
        return AspectRatio.defaultTopSheetRatios
    }
    val availableByName = availableAspectRatios.associateBy { it.name }
    val ratios = value.split(",")
        .mapNotNull { name ->
            availableByName[name] ?: AspectRatio.valueOfOrNull(name)
        }
    return AspectRatio.sanitizeTopSheetRatios(ratios)
}

internal fun readCategoryOrder(preferences: Preferences): List<String> {
    val json = preferences[PreferenceKeys.CATEGORY_ORDER_JSON]
    return if (json != null) {
        val array = JSONArray(json)
        List(array.length()) { index ->
            if (array.optJSONObject(index)?.optString("type") == "built_in") {
                builtInCategoryLabel()
            } else {
                array.getString(index)
            }
        }
    } else {
        preferences[PreferenceKeys.CATEGORY_ORDER]?.split(",").orEmpty()
    }.filter { it.isNotBlank() }.distinct()
}

internal fun serializeCategoryOrder(order: List<String>): String {
    val builtInText = builtInCategoryLabel()
    val array = JSONArray()
    order.filter { it.isNotBlank() }.distinct().forEach { category ->
        // 系统分类使用稳定标识，切换语言后不会变成一个自定义空分类。
        array.put(if (category == builtInText) JSONObject().put("type", "built_in") else category)
    }
    return array.toString()
}
