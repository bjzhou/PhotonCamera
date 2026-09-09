package com.hinnka.mycamera.raw

/** S9 PhotoStyle identities shared by profile assets and persisted RAW settings. */
enum class LumixPhotoStyle(val assetName: String) {
    Standard("standard"),
    Vivid("vivid"),
    Natural("natural"),
    Landscape("landscape"),
    Portrait("portrait"),
    Monochrome("monochrome"),
    LMonochrome("l_monochrome"),
    LMonochromeD("l_monochrome_d"),
    LMonochromeS("l_monochrome_s"),
    LeicaMonochrome("leica_monochrome"),
    LClassicNeo("l_classicneo"),
    Flat("flat"),
    CinelikeD2("cinelike_d2"),
    CinelikeV2("cinelike_v2"),
    Like709("709like"),
    VLog("vlog");

    companion object {
        fun fromPersistedValue(value: String?): LumixPhotoStyle =
            entries.firstOrNull {
                it.assetName.equals(value, ignoreCase = true) || it.name.equals(value, ignoreCase = true)
            } ?: Standard
    }
}
