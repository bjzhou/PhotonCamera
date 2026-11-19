package com.hinnka.mycamera.camera

/** Persisted independently from visibility so hiding the grid preserves the selected style. */
enum class GridStyle {
    THIRDS,
    DIAGONALS,
    GOLDEN_RATIO,
    GOLDEN_TRIANGLE,
    GOLDEN_SPIRAL;

    companion object {
        fun fromPersistedName(name: String?): GridStyle =
            entries.firstOrNull { it.name == name } ?: THIRDS
    }
}
