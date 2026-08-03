package com.hinnka.mycamera.ml

import java.io.File
import java.io.FileInputStream
import java.nio.charset.StandardCharsets

internal enum class DepthModelImportFormat {
    TFLITE,
    ZIP
}

/**
 * Detects the selected model container by signature rather than its display name or MIME type.
 * Document providers frequently expose .tflite files as application/octet-stream.
 */
internal fun detectDepthModelImportFormat(file: File): DepthModelImportFormat? {
    if (!file.isFile) {
        return null
    }

    val header = ByteArray(IMPORT_HEADER_SIZE)
    val bytesRead = FileInputStream(file).use { input -> input.read(header) }
    if (
        bytesRead >= IMPORT_HEADER_SIZE &&
        header.copyOfRange(4, 8).contentEquals(TFLITE_FILE_IDENTIFIER)
    ) {
        return DepthModelImportFormat.TFLITE
    }
    if (
        bytesRead >= ZIP_SIGNATURE_SIZE &&
        header[0] == ZIP_SIGNATURE_PREFIX[0] &&
        header[1] == ZIP_SIGNATURE_PREFIX[1] &&
        (
            header[2] == 0x03.toByte() && header[3] == 0x04.toByte() ||
                header[2] == 0x05.toByte() && header[3] == 0x06.toByte() ||
                header[2] == 0x07.toByte() && header[3] == 0x08.toByte()
            )
    ) {
        return DepthModelImportFormat.ZIP
    }
    return null
}

private const val IMPORT_HEADER_SIZE = 8
private const val ZIP_SIGNATURE_SIZE = 4
private val TFLITE_FILE_IDENTIFIER = "TFL3".toByteArray(StandardCharsets.US_ASCII)
private val ZIP_SIGNATURE_PREFIX = byteArrayOf(0x50, 0x4B)
