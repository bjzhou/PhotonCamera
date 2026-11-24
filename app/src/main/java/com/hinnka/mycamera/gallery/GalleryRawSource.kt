package com.hinnka.mycamera.gallery

import java.util.Locale

internal object GalleryRawSource {
    private val extensions = setOf("dng", "rw2", "arw", "3fr", "cr3", "nef")

    fun isImportable(fileName: String?, mimeType: String?): Boolean {
        val subtype = mimeType?.substringBefore(';')?.trim()?.substringAfter('/')?.lowercase(Locale.ROOT)
        return extension(fileName) in extensions ||
            subtype?.substringAfterLast('-') in extensions ||
            subtype?.contains("raw") == true || subtype?.contains("dng") == true
    }

    fun isDng(fileName: String?, mimeType: String?): Boolean =
        extension(fileName) == "dng" || mimeType?.contains("dng", ignoreCase = true) == true

    private fun extension(fileName: String?): String? =
        fileName?.substringAfterLast('.', missingDelimiterValue = "")?.lowercase(Locale.ROOT)
}
