package com.hinnka.mycamera.lut

/**
 * LUT ids of AI color matches, which belong to one photo and are not part of the filter library.
 *
 * A match is stored in the photo's directory (GalleryManager.getAiColorMatchFile) and referenced
 * from that photo's metadata as `photo-color-match:<photoId>:<version>`; [LutManager.loadLut]
 * resolves it. A new match gets a new version so cached LUTs never go stale. These ids must not
 * be carried to other photos or presets ([transferable]).
 */
object PhotoColorMatch {
    private const val PREFIX = "photo-color-match:"

    data class Ref(val photoId: String, val version: Long)

    fun lutId(photoId: String, version: Long): String = "$PREFIX$photoId:$version"

    fun isId(lutId: String?): Boolean = lutId?.startsWith(PREFIX) == true

    fun parse(lutId: String?): Ref? {
        if (!isId(lutId)) return null
        val body = lutId!!.removePrefix(PREFIX)
        val split = body.lastIndexOf(':')
        if (split <= 0) return null
        val version = body.substring(split + 1).toLongOrNull() ?: return null
        return Ref(body.substring(0, split), version)
    }

    /** [lutId], or null when it is a photo's own color match. */
    fun transferable(lutId: String?): String? = lutId?.takeUnless(::isId)
}
