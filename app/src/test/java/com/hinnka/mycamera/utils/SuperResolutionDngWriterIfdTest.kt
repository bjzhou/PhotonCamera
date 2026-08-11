package com.hinnka.mycamera.utils

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder

class SuperResolutionDngWriterIfdTest {
    @Test
    fun `WarpRectilinear keeps DngCreator normalization scale as radial offset`() {
        val coefficients = camera2DistortionToDngWarpCoefficients(
            normalizedDistortion = doubleArrayOf(0.984, 0.01, 0.002, -0.0005, 0.0002, -0.0003),
            maxRadius = 2.0,
            focal = 4.0,
        )

        assertEquals(0.984, coefficients[0], 0.0)
        assertEquals(0.0025, coefficients[1], 1e-12)
        assertEquals(0.000125, coefficients[2], 1e-12)
        assertEquals(-0.0000078125, coefficients[3], 1e-12)
        assertEquals(0.0001, coefficients[4], 1e-12)
        assertEquals(-0.00015, coefficients[5], 1e-12)
    }

    @Test
    fun `header links ExifIFD and keeps focal length out of IFD0`() {
        val lensModelBytes =
            "OPPO Find X9 Ultra ultra wide camera 14mm f/2.0\u0000".toByteArray(Charsets.US_ASCII)
        val userCommentBytes = encodeExifAsciiUserComment(OPPO_EXIF_USER_COMMENT)
        val primaryEntries = listOf(
            tiffEntry(TAG_STRIP_OFFSETS, TYPE_LONG, 1, uintBytes(0)),
            tiffEntry(TAG_MAKE, TYPE_ASCII, 7, "Photon\u0000".toByteArray(Charsets.US_ASCII)),
            tiffEntry(TAG_EXIF_IFD_POINTER, TYPE_LONG, 1, uintBytes(0)),
        ).sortedBy(::entryTag)
        val exifEntries = listOf(
            tiffEntry(TAG_DATETIME_ORIGINAL, TYPE_ASCII, 20, "2026:07:13 12:34:56\u0000".toByteArray(Charsets.US_ASCII)),
            tiffEntry(TAG_FOCAL_LENGTH, TYPE_RATIONAL, 1, uintBytes(20) + uintBytes(1)),
            tiffEntry(TAG_USER_COMMENT, TYPE_UNDEFINED, userCommentBytes.size.toLong(), userCommentBytes),
            tiffEntry(TAG_LENS_MODEL, TYPE_ASCII, lensModelBytes.size.toLong(), lensModelBytes),
        ).sortedBy(::entryTag)

        val header = buildHeader(primaryEntries, exifEntries)
        val primaryIfd = readIfd(header, 8)
        val exifIfdOffset = primaryIfd.getValue(TAG_EXIF_IFD_POINTER).valueOrOffset
        val exifIfd = readIfd(header, exifIfdOffset)

        assertTrue(primaryIfd.containsKey(TAG_EXIF_IFD_POINTER))
        assertFalse(primaryIfd.containsKey(TAG_FOCAL_LENGTH))
        assertTrue(exifIfd.containsKey(TAG_FOCAL_LENGTH))
        assertTrue(exifIfd.containsKey(TAG_DATETIME_ORIGINAL))
        assertEquals(TYPE_UNDEFINED, exifIfd.getValue(TAG_USER_COMMENT).type)
        assertTrue(exifIfd.containsKey(TAG_LENS_MODEL))
        assertTrue(exifIfdOffset < primaryIfd.getValue(TAG_MAKE).valueOrOffset)
        assertEquals(header.size, primaryIfd.getValue(TAG_STRIP_OFFSETS).valueOrOffset)

        val focalLength = exifIfd.getValue(TAG_FOCAL_LENGTH)
        assertEquals(20, readUInt(header, focalLength.valueOrOffset))
        assertEquals(1, readUInt(header, focalLength.valueOrOffset + 4))
        assertTrue(exifIfd.getValue(TAG_DATETIME_ORIGINAL).valueOrOffset > exifIfdOffset)
    }

    @Test
    fun `profile DNG keeps Camera Raw Look and PGTM2 in raw IFD0 without preview`() {
        val primaryEntries = listOf(
            tiffEntry(TAG_XMP, TYPE_BYTE, 8, "PGTM-XMP".toByteArray(Charsets.US_ASCII)),
            tiffEntry(TAG_STRIP_OFFSETS, TYPE_LONG, 1, uintBytes(0)),
            tiffEntry(TAG_STRIP_BYTE_COUNTS, TYPE_LONG, 1, uintBytes(32)),
            tiffEntry(TAG_PROFILE_GAIN_TABLE_MAP_2, TYPE_UNDEFINED, 8, ByteArray(8) { it.toByte() }),
        ).sortedBy(::entryTag)

        val header = buildHeader(primaryEntries, emptyList())
        val ifd0 = readIfd(header, 8)

        assertEquals(header.size, ifd0.getValue(TAG_STRIP_OFFSETS).valueOrOffset)
        assertTrue(ifd0.containsKey(TAG_PROFILE_GAIN_TABLE_MAP_2))
        assertTrue(ifd0.containsKey(TAG_XMP))
        assertFalse(ifd0.containsKey(TAG_SUB_IFDS))
        assertTrue(ifd0.getValue(TAG_PROFILE_GAIN_TABLE_MAP_2).valueOrOffset > 8)
    }

    private fun buildHeader(primaryEntries: List<Any>, exifEntries: List<Any>): ByteArray {
        val method = SuperResolutionDngWriter::class.java.declaredMethods.single {
            it.name == "buildHeader" && it.parameterTypes.size == 2
        }
        method.isAccessible = true
        return method.invoke(SuperResolutionDngWriter, primaryEntries, exifEntries) as ByteArray
    }

    private fun tiffEntry(tag: Int, type: Int, count: Long, value: ByteArray): Any {
        val entryClass = Class.forName(
            "com.hinnka.mycamera.utils.SuperResolutionDngWriter\$TiffEntry"
        )
        val constructor = entryClass.declaredConstructors.single()
        constructor.isAccessible = true
        return constructor.newInstance(tag, type, count, value)
    }

    private fun entryTag(entry: Any): Int {
        val field = entry.javaClass.getDeclaredField("tag")
        field.isAccessible = true
        return field.getInt(entry)
    }

    private fun readIfd(bytes: ByteArray, offset: Int): Map<Int, IfdEntry> {
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val count = buffer.getShort(offset).toInt() and 0xFFFF
        return buildMap {
            repeat(count) { index ->
                val entryOffset = offset + 2 + index * 12
                val tag = buffer.getShort(entryOffset).toInt() and 0xFFFF
                put(
                    tag,
                    IfdEntry(
                        type = buffer.getShort(entryOffset + 2).toInt() and 0xFFFF,
                        count = buffer.getInt(entryOffset + 4).toLong() and 0xFFFFFFFFL,
                        valueOrOffset = buffer.getInt(entryOffset + 8),
                    )
                )
            }
        }
    }

    private fun readUInt(bytes: ByteArray, offset: Int): Int =
        ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN).getInt(offset)

    private fun uintBytes(value: Int): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(value).array()

    private data class IfdEntry(
        val type: Int,
        val count: Long,
        val valueOrOffset: Int,
    )

    private companion object {
        const val TYPE_ASCII = 2
        const val TYPE_BYTE = 1
        const val TYPE_LONG = 4
        const val TYPE_RATIONAL = 5
        const val TYPE_UNDEFINED = 7
        const val TAG_MAKE = 271
        const val TAG_STRIP_OFFSETS = 273
        const val TAG_STRIP_BYTE_COUNTS = 279
        const val TAG_SUB_IFDS = 330
        const val TAG_XMP = 700
        const val TAG_EXIF_IFD_POINTER = 34665
        const val TAG_DATETIME_ORIGINAL = 36867
        const val TAG_FOCAL_LENGTH = 37386
        const val TAG_USER_COMMENT = 37510
        const val TAG_LENS_MODEL = 42036
        const val TAG_PROFILE_GAIN_TABLE_MAP_2 = 52544
    }
}
