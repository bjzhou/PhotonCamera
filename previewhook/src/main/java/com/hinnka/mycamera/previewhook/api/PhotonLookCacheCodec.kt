package com.hinnka.mycamera.previewhook.api

import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.DataInputStream
import java.io.DataOutputStream
import java.nio.charset.StandardCharsets
import java.util.zip.CRC32

internal data class PhotonLookCacheRecord(
    val signature: String,
    val lutId: String?,
    val lutTitle: String,
    val lutSize: Int,
    val lutDataType: Int,
    val lutCurveShaderId: Int,
    val lutColorSpaceOrdinal: Int,
    val lutPayload: ByteArray?,
    val recipeJson: String,
)

/**
 * Versioned binary format for the last Photon look copied into MGC private storage.
 *
 * A length prefix and CRC make interrupted or corrupt cache files fail closed instead of applying
 * a partially written LUT.
 */
internal object PhotonLookCacheCodec {
    fun encode(record: PhotonLookCacheRecord): ByteArray {
        validateRecord(record)
        val body = ByteArrayOutputStream().also { bytes ->
            DataOutputStream(bytes).use { output ->
                output.writeString(record.signature)
                output.writeNullableString(record.lutId)
                output.writeString(record.lutTitle)
                output.writeInt(record.lutSize)
                output.writeInt(record.lutDataType)
                output.writeInt(record.lutCurveShaderId)
                output.writeInt(record.lutColorSpaceOrdinal)
                output.writeNullableByteArray(record.lutPayload)
                output.writeString(record.recipeJson)
            }
        }.toByteArray()
        require(body.size <= MAX_BODY_BYTES) {
            "Photon look cache body too large: ${body.size}"
        }
        val checksum = CRC32().apply { update(body) }.value
        return ByteArrayOutputStream(HEADER_BYTES + body.size + CHECKSUM_BYTES).also { bytes ->
            DataOutputStream(bytes).use { output ->
                output.writeInt(MAGIC)
                output.writeInt(FORMAT_VERSION)
                output.writeInt(body.size)
                output.write(body)
                output.writeLong(checksum)
            }
        }.toByteArray()
    }

    fun decode(encoded: ByteArray): PhotonLookCacheRecord {
        require(encoded.size >= HEADER_BYTES + CHECKSUM_BYTES) {
            "Photon look cache is truncated"
        }
        return DataInputStream(ByteArrayInputStream(encoded)).use { input ->
            require(input.readInt() == MAGIC) { "Invalid Photon look cache magic" }
            require(input.readInt() == FORMAT_VERSION) {
                "Unsupported Photon look cache version"
            }
            val bodySize = input.readInt()
            require(bodySize in 1..MAX_BODY_BYTES) {
                "Invalid Photon look cache body size=$bodySize"
            }
            require(encoded.size == HEADER_BYTES + bodySize + CHECKSUM_BYTES) {
                "Photon look cache length mismatch"
            }
            val body = ByteArray(bodySize)
            input.readFully(body)
            val expectedChecksum = input.readLong()
            val actualChecksum = CRC32().apply { update(body) }.value
            require(actualChecksum == expectedChecksum) {
                "Photon look cache checksum mismatch"
            }

            DataInputStream(ByteArrayInputStream(body)).use { bodyInput ->
                val record = PhotonLookCacheRecord(
                    signature = bodyInput.readString(),
                    lutId = bodyInput.readNullableString(),
                    lutTitle = bodyInput.readString(),
                    lutSize = bodyInput.readInt(),
                    lutDataType = bodyInput.readInt(),
                    lutCurveShaderId = bodyInput.readInt(),
                    lutColorSpaceOrdinal = bodyInput.readInt(),
                    lutPayload = bodyInput.readNullableByteArray(),
                    recipeJson = bodyInput.readString(),
                )
                require(bodyInput.available() == 0) {
                    "Photon look cache has trailing body data"
                }
                validateRecord(record)
                record
            }
        }
    }

    private fun validateRecord(record: PhotonLookCacheRecord) {
        require(record.signature.isNotBlank()) { "Photon look signature is empty" }
        require(record.lutDataType == LUT_DATA_TYPE_UINT8 ||
            record.lutDataType == LUT_DATA_TYPE_UINT16
        ) {
            "Unsupported LUT data type=${record.lutDataType}"
        }
        if (record.lutSize == 0) {
            require(record.lutPayload == null) {
                "LUT payload exists without LUT metadata"
            }
            return
        }
        require(record.lutSize in 1..MAX_LUT_EDGE) {
            "Invalid LUT size=${record.lutSize}"
        }
        val bytesPerComponent = if (record.lutDataType == LUT_DATA_TYPE_UINT16) 2L else 1L
        val expectedPayloadSize = record.lutSize.toLong() *
            record.lutSize.toLong() *
            record.lutSize.toLong() *
            CHANNEL_COUNT *
            bytesPerComponent
        require(expectedPayloadSize <= MAX_LUT_PAYLOAD_BYTES) {
            "LUT payload is too large: $expectedPayloadSize"
        }
        require(record.lutPayload?.size?.toLong() == expectedPayloadSize) {
            "Invalid LUT payload size=${record.lutPayload?.size}, expected=$expectedPayloadSize"
        }
    }

    private fun DataOutputStream.writeString(value: String) {
        val bytes = value.toByteArray(StandardCharsets.UTF_8)
        require(bytes.size <= MAX_STRING_BYTES) { "Photon look cache string is too large" }
        writeInt(bytes.size)
        write(bytes)
    }

    private fun DataOutputStream.writeNullableString(value: String?) {
        if (value == null) {
            writeInt(NULL_LENGTH)
        } else {
            writeString(value)
        }
    }

    private fun DataOutputStream.writeNullableByteArray(value: ByteArray?) {
        if (value == null) {
            writeInt(NULL_LENGTH)
        } else {
            require(value.size <= MAX_LUT_PAYLOAD_BYTES) {
                "Photon LUT cache payload is too large"
            }
            writeInt(value.size)
            write(value)
        }
    }

    private fun DataInputStream.readString(): String {
        val size = readInt()
        require(size in 0..MAX_STRING_BYTES) {
            "Invalid Photon look cache string size=$size"
        }
        return String(ByteArray(size).also(::readFully), StandardCharsets.UTF_8)
    }

    private fun DataInputStream.readNullableString(): String? {
        val size = readInt()
        if (size == NULL_LENGTH) return null
        require(size in 0..MAX_STRING_BYTES) {
            "Invalid Photon look cache string size=$size"
        }
        return String(ByteArray(size).also(::readFully), StandardCharsets.UTF_8)
    }

    private fun DataInputStream.readNullableByteArray(): ByteArray? {
        val size = readInt()
        if (size == NULL_LENGTH) return null
        require(size in 0..MAX_LUT_PAYLOAD_BYTES) {
            "Invalid Photon LUT cache payload size=$size"
        }
        return ByteArray(size).also(::readFully)
    }

    private const val MAGIC = 0x50484C4B
    private const val FORMAT_VERSION = 1
    private const val HEADER_BYTES = 12
    private const val CHECKSUM_BYTES = 8
    private const val NULL_LENGTH = -1
    private const val MAX_STRING_BYTES = 1024 * 1024
    private const val MAX_LUT_PAYLOAD_BYTES = 64 * 1024 * 1024
    private const val MAX_BODY_BYTES = MAX_LUT_PAYLOAD_BYTES + MAX_STRING_BYTES * 3
    private const val MAX_LUT_EDGE = 128
    private const val CHANNEL_COUNT = 3L
    private const val LUT_DATA_TYPE_UINT8 = 0
    private const val LUT_DATA_TYPE_UINT16 = 1
}
