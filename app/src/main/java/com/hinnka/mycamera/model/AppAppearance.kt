package com.hinnka.mycamera.model

object AppAppearance {
    // Sampled from the solid yellow shutter in the supplied reference image.
    const val DEFAULT_ACCENT_COLOR: Int = 0xFFFFCD34.toInt()

    // Interface accents are opaque; transparency belongs to individual UI states.
    fun opaqueAccent(color: Int): Int = color or 0xFF000000.toInt()
}
