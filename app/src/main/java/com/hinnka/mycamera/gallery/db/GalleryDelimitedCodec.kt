package com.hinnka.mycamera.gallery.db

import com.hinnka.mycamera.model.ColorRecipeParams

object GalleryDelimitedCodec {
    fun encodeList(values: List<String>): String? {
        if (values.isEmpty()) return null
        return values.joinToString(separator = ",") { escape(it) }
    }

    fun decodeList(value: String?): List<String> {
        if (value.isNullOrEmpty()) return emptyList()
        return splitEscaped(value, ',').map { unescape(it) }
    }

    fun encodeMap(values: Map<String, String>): String? {
        if (values.isEmpty()) return null
        return values.entries.joinToString(separator = ",") { (key, value) ->
            "${escape(key)}=${escape(value)}"
        }
    }

    fun decodeMap(value: String?): Map<String, String> {
        if (value.isNullOrEmpty()) return emptyMap()
        return splitEscaped(value, ',').mapNotNull { entry ->
            val index = firstUnescapedIndexOf(entry, '=')
            if (index < 0) return@mapNotNull null
            unescape(entry.substring(0, index)) to unescape(entry.substring(index + 1))
        }.toMap()
    }

    private fun escape(value: String): String {
        return buildString(value.length) {
            value.forEach { char ->
                if (char == '\\' || char == ',' || char == '=') append('\\')
                append(char)
            }
        }
    }

    private fun unescape(value: String): String {
        return buildString(value.length) {
            var escaping = false
            value.forEach { char ->
                if (escaping) {
                    append(char)
                    escaping = false
                } else if (char == '\\') {
                    escaping = true
                } else {
                    append(char)
                }
            }
            if (escaping) append('\\')
        }
    }

    private fun splitEscaped(value: String, delimiter: Char): List<String> {
        val result = mutableListOf<String>()
        val current = StringBuilder()
        var escaping = false
        value.forEach { char ->
            when {
                escaping -> {
                    current.append('\\')
                    current.append(char)
                    escaping = false
                }
                char == '\\' -> escaping = true
                char == delimiter -> {
                    result.add(current.toString())
                    current.clear()
                }
                else -> current.append(char)
            }
        }
        if (escaping) current.append('\\')
        result.add(current.toString())
        return result
    }

    private fun firstUnescapedIndexOf(value: String, target: Char): Int {
        var escaping = false
        value.forEachIndexed { index, char ->
            if (escaping) {
                escaping = false
            } else if (char == '\\') {
                escaping = true
            } else if (char == target) {
                return index
            }
        }
        return -1
    }
}
