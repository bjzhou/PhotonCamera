package com.hinnka.mycamera.utils

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertArrayEquals
import org.junit.Test

class DeviceUtilExifTest {
    @Test
    fun `EXIF model prefers printable ASCII marketing name`() {
        assertEquals(
            "OPPO Find X9 Ultra",
            selectExifModel(
                deviceModel = "OPPO Find X9 Ultra",
                buildModel = "PLB110",
            ),
        )
    }

    @Test
    fun `EXIF model falls back when marketing name is not printable ASCII`() {
        assertEquals(
            "PLB110",
            selectExifModel(
                deviceModel = "OPPO Find X9 至尊版",
                buildModel = "PLB110",
            ),
        )
        assertEquals(
            "PLB110",
            selectExifModel(
                deviceModel = "OPPO\u0007Find X9 Ultra",
                buildModel = "PLB110",
            ),
        )
    }

    @Test
    fun `lens model matches reference EXIF format`() {
        assertEquals(
            "OPPO Find X9 Ultra ultra wide camera 14mm f/2.0",
            formatExifLensModel(
                model = "OPPO Find X9 Ultra",
                focalLength35mm = 14,
                aperture = 2f,
            ),
        )
    }

    @Test
    fun `main lens uses wide camera EXIF name`() {
        assertEquals(
            "OPPO Find X9 Ultra wide camera 23mm f/1.8",
            formatExifLensModel(
                model = "OPPO Find X9 Ultra",
                focalLength35mm = 23,
                aperture = 1.8f,
            ),
        )
    }

    @Test
    fun `OPPO user comment uses EXIF ASCII encoding prefix`() {
        assertArrayEquals(
            byteArrayOf(
                'A'.code.toByte(),
                'S'.code.toByte(),
                'C'.code.toByte(),
                'I'.code.toByte(),
                'I'.code.toByte(),
                0,
                0,
                0,
            ) + OPPO_EXIF_USER_COMMENT.toByteArray(Charsets.US_ASCII),
            encodeExifAsciiUserComment(OPPO_EXIF_USER_COMMENT),
        )
    }

    @Test
    fun `lens model requires focal length and aperture`() {
        assertNull(
            formatExifLensModel(
                model = "OPPO Find X9 Ultra",
                focalLength35mm = null,
                aperture = 2f,
            ),
        )
        assertNull(
            formatExifLensModel(
                model = "OPPO Find X9 Ultra",
                focalLength35mm = 14,
                aperture = null,
            ),
        )
    }
}
