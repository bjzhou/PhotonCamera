package com.hinnka.mycamera.camera

/** Persisted independently from visibility so the quick toggle retains the selected guide. */
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
