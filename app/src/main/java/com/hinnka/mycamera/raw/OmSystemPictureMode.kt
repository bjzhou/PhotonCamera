package com.hinnka.mycamera.raw

/** NEP1 finishing modes with a fixed colour recipe; i-Finish is scene adaptive and excluded. */
enum class OmSystemPictureMode(val persistedValue: String, val assetKey: String) {
    Vivid("vivid", "vivid"),
    Natural("natural", "natural"),
    Muted("muted", "muted"),
    Portrait("portrait", "portrait");

    companion object {
        fun fromPersistedValue(value: String?): OmSystemPictureMode =
            entries.firstOrNull {
                it.persistedValue.equals(value, ignoreCase = true) ||
                    it.name.equals(value, ignoreCase = true)
            } ?: Natural
    }
}
