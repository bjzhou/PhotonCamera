package com.hinnka.mycamera.ml

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder

class DepthModelImportFormatTest {
    @get:Rule
    val temporaryFolder = TemporaryFolder()

    @Test
    fun detectsTfliteByFlatBufferIdentifierRegardlessOfFileName() {
        val file = temporaryFolder.newFile("model.data")
        file.writeBytes(byteArrayOf(0, 0, 0, 0, 'T'.code.toByte(), 'F'.code.toByte(), 'L'.code.toByte(), '3'.code.toByte()))

        assertEquals(DepthModelImportFormat.TFLITE, detectDepthModelImportFormat(file))
    }

    @Test
    fun detectsSupportedZipSignatures() {
        val localEntry = temporaryFolder.newFile("local-entry.bin")
        localEntry.writeBytes(byteArrayOf(0x50, 0x4B, 0x03, 0x04))
        val emptyArchive = temporaryFolder.newFile("empty-archive.bin")
        emptyArchive.writeBytes(byteArrayOf(0x50, 0x4B, 0x05, 0x06))
        val spanningArchive = temporaryFolder.newFile("spanning-archive.bin")
        spanningArchive.writeBytes(byteArrayOf(0x50, 0x4B, 0x07, 0x08))

        assertEquals(DepthModelImportFormat.ZIP, detectDepthModelImportFormat(localEntry))
        assertEquals(DepthModelImportFormat.ZIP, detectDepthModelImportFormat(emptyArchive))
        assertEquals(DepthModelImportFormat.ZIP, detectDepthModelImportFormat(spanningArchive))
    }

    @Test
    fun rejectsExtensionOnlyAndMismatchedZipSignature() {
        val extensionOnly = temporaryFolder.newFile("depth_anything_v2.tflite")
        extensionOnly.writeBytes("not a model".toByteArray())
        val mismatchedZip = temporaryFolder.newFile("model.zip")
        mismatchedZip.writeBytes(byteArrayOf(0x50, 0x4B, 0x03, 0x06))

        assertNull(detectDepthModelImportFormat(extensionOnly))
        assertNull(detectDepthModelImportFormat(mismatchedZip))
    }
}
