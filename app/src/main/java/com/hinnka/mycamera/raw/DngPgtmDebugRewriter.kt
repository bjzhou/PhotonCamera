package com.hinnka.mycamera.raw

import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.RandomAccessFile
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal object DngPgtmDebugRewriter {
    private const val TAG = "DngPgtmDebugRewriter"

    private const val REWRITE_GENERATED_PGTM_ON_RAW_REFRESH = false

    private const val TIFF_CLASSIC_MAGIC = 42
    private const val TYPE_BYTE = 1
    private const val TYPE_LONG = 4
    private const val TYPE_FLOAT = 11
    private const val TYPE_UNDEFINED = 7

    private const val TAG_NEW_SUBFILE_TYPE = 254
    private const val TAG_XMP = DngCameraRawProfileXmp.TAG_XMP
    private const val TAG_SUB_IFDS = 330
    private const val TAG_DNG_VERSION = 50706
    private const val TAG_PROFILE_NAME = 50936
    private const val TAG_PROFILE_TONE_CURVE = 50940
    private const val TAG_DEFAULT_BLACK_RENDER = 51110
    private const val TAG_PROFILE_GAIN_TABLE_MAP = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP
    private const val TAG_PROFILE_GAIN_TABLE_MAP_2 = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2

    fun rewriteGeneratedPgtmOnRawRefreshIfEnabled(
        dngFile: File?,
        profileGainTableMap: DngProfileGainTableMap?,
        profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Photon,
    ): Boolean {
        if (!BuildConfig.DEBUG || !REWRITE_GENERATED_PGTM_ON_RAW_REFRESH) return false
        val file = dngFile ?: return false
        val map = profileGainTableMap?.takeIf { it.isValid } ?: return false
        return rewriteProfileGainTableMap(file, map, profileToneMapMode)
    }

    fun rewriteProfileGainTableMap(
        dngFile: File,
        profileGainTableMap: DngProfileGainTableMap,
        profileToneMapMode: RawProfileToneMapMode = RawProfileToneMapMode.Photon,
    ): Boolean {
        if (!BuildConfig.DEBUG) return false
        if (!profileGainTableMap.isValid || !dngFile.exists() || dngFile.length() < 16L) {
            return false
        }
        return runCatching {
            RandomAccessFile(dngFile, "rw").use { raf ->
                val byteOrder = readTiffByteOrder(raf) ?: return@use false
                val magic = raf.readUnsignedShort(byteOrder)
                if (magic != TIFF_CLASSIC_MAGIC) {
                    logWarning("Unsupported TIFF magic=$magic in ${dngFile.name}")
                    return@use false
                }
                val ifd0Offset = raf.readUnsignedInt(byteOrder)
                val ifd0 = readIfd(raf, ifd0Offset, byteOrder) ?: return@use false
                val subIfdOffsets = readLongValues(
                    raf,
                    ifd0.entries.firstOrNull { it.tag == TAG_SUB_IFDS },
                    byteOrder,
                ) ?: return@use false
                val rawSubIfdIndex = subIfdOffsets.indices.firstOrNull { index ->
                    val candidate = readIfd(raf, subIfdOffsets[index], byteOrder)
                    candidate?.entries?.firstOrNull { it.tag == TAG_NEW_SUBFILE_TYPE }
                        ?.let { readInlineLong(it, byteOrder) == 0L } == true
                } ?: return@use false
                val rawIfdOffset = subIfdOffsets[rawSubIfdIndex]
                val rawIfd = readIfd(raf, rawIfdOffset, byteOrder) ?: return@use false
                val profileLookName = profileLookNameForToneMapMode(profileToneMapMode)
                val cameraRawProfileXmp = DngCameraRawProfileXmp.build(
                    profileLookName = profileLookName,
                )
                val toneCurvePoints = profileToneCurveForToneMapMode(profileToneMapMode)
                val pgtmPayload = profileGainTableMap.encodeProfileGainTableMap2(byteOrder)
                val newRawIfdOffset = appendIfdWithReplacements(
                    raf = raf,
                    original = rawIfd,
                    replacements = emptyList(),
                    removedTags = setOf(
                        TAG_PROFILE_GAIN_TABLE_MAP,
                        TAG_PROFILE_GAIN_TABLE_MAP_2,
                    ),
                    byteOrder = byteOrder,
                ) ?: return@use false
                subIfdOffsets[rawSubIfdIndex] = newRawIfdOffset
                val replacements = listOf(
                    TiffValue(
                        tag = TAG_XMP,
                        type = TYPE_BYTE,
                        count = cameraRawProfileXmp.size.toLong(),
                        bytes = cameraRawProfileXmp,
                    ),
                    TiffValue(
                        tag = TAG_DNG_VERSION,
                        type = TYPE_BYTE,
                        count = 4,
                        bytes = byteArrayOf(1, 7, 0, 0)
                    ),
                    TiffValue(
                        tag = TAG_PROFILE_TONE_CURVE,
                        type = TYPE_FLOAT,
                        count = toneCurvePoints.size.toLong(),
                        bytes = encodeFloatArray(
                            values = toneCurvePoints,
                            byteOrder = byteOrder
                        )
                    ),
                    TiffValue(
                        tag = TAG_DEFAULT_BLACK_RENDER,
                        type = TYPE_LONG,
                        count = 1,
                        bytes = uintBytes(1, byteOrder)
                    ),
                    TiffValue(
                        tag = TAG_PROFILE_GAIN_TABLE_MAP_2,
                        type = TYPE_UNDEFINED,
                        count = pgtmPayload.size.toLong(),
                        bytes = pgtmPayload,
                    ),
                    TiffValue(
                        tag = TAG_SUB_IFDS,
                        type = TYPE_LONG,
                        count = subIfdOffsets.size.toLong(),
                        bytes = encodeLongArray(subIfdOffsets, byteOrder),
                    )
                )
                val newIfdOffset = appendIfdWithReplacements(
                    raf = raf,
                    original = ifd0,
                    replacements = replacements,
                    removedTags = setOf(
                        TAG_PROFILE_NAME,
                        TAG_PROFILE_GAIN_TABLE_MAP,
                        TAG_PROFILE_GAIN_TABLE_MAP_2,
                    ),
                    byteOrder = byteOrder
                ) ?: return@use false
                raf.seek(4)
                raf.writeUInt(newIfdOffset, byteOrder)
                logInfo(
                    "Rewrote debug DNG PGTM: file=${dngFile.name} " +
                        "profile=anonymous-embedded look=$profileLookName " +
                        "cameraRawLook=pgtm=100,toneCurve=100 " +
                        "tag=${DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2} " +
                        "grid=${profileGainTableMap.mapPointsH}x${profileGainTableMap.mapPointsV}x" +
                        "${profileGainTableMap.mapPointsN} gamma=${profileGainTableMap.gamma} " +
                        "rawIfd=$rawIfdOffset->$newRawIfdOffset " +
                        "ifd0=$ifd0Offset->$newIfdOffset"
                )
                true
            }
        }.onFailure {
            logWarning("Failed to rewrite debug DNG PGTM: ${dngFile.absolutePath}", it)
        }.getOrDefault(false)
    }

    private fun logInfo(message: String) {
        runCatching { PLog.i(TAG, message) }
    }

    private fun logWarning(message: String, throwable: Throwable? = null) {
        runCatching {
            if (throwable != null) {
                PLog.w(TAG, message, throwable)
            } else {
                PLog.w(TAG, message)
            }
        }
    }

    private fun profileLookNameForToneMapMode(mode: RawProfileToneMapMode): String {
        return when (mode) {
            RawProfileToneMapMode.Photon -> DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME
            else -> DngProfileToneCurve.GOOGLE_HDR_PROFILE_NAME
        }
    }

    private fun profileToneCurveForToneMapMode(mode: RawProfileToneMapMode): FloatArray {
        return when (mode) {
            RawProfileToneMapMode.Photon -> DngProfileToneCurve.photonPgtmToneCurvePoints()
            else -> DngProfileToneCurve.googleHdrToneCurvePoints()
        }
    }

    private fun appendIfdWithReplacements(
        raf: RandomAccessFile,
        original: TiffIfd,
        replacements: List<TiffValue>,
        removedTags: Set<Int> = emptySet(),
        byteOrder: ByteOrder,
    ): Long? {
        if (replacements.isEmpty() && removedTags.isEmpty()) return null
        val replacementByTag = replacements.associateBy { it.tag }
        val merged = LinkedHashMap<Int, IfdValue>()
        original.entries.forEach { entry ->
            if (entry.tag !in replacementByTag && entry.tag !in removedTags) {
                merged[entry.tag] = IfdValue.Existing(entry)
            }
        }
        replacements.forEach { replacement ->
            merged[replacement.tag] = IfdValue.Replacement(replacement)
        }
        val values = merged.values.sortedBy { it.tag }
        if (values.size > MAX_IFD_ENTRY_COUNT || values.any { it.count > UINT_MAX }) return null

        val ifdOffset = alignedAppendOffset(raf)
        val dataBaseOffset = ifdOffset + 2L + values.size * 12L + 4L
        if (dataBaseOffset > UINT_MAX) return null

        val dataArea = ByteArrayOutputStream()
        val entryArea = ByteArrayOutputStream()
        values.forEach { value ->
            entryArea.writeUShort(value.tag, byteOrder)
            entryArea.writeUShort(value.type, byteOrder)
            entryArea.writeUInt(value.count, byteOrder)
            when (value) {
                is IfdValue.Existing -> entryArea.write(value.entry.inlineOrOffset)
                is IfdValue.Replacement -> {
                    val replacementBytes = value.value.bytes
                    if (replacementBytes.size <= 4) {
                        entryArea.write(inlineValue(replacementBytes))
                    } else {
                        if ((dataArea.size() and 1) != 0) dataArea.write(0)
                        val valueOffset = dataBaseOffset + dataArea.size().toLong()
                        if (valueOffset + replacementBytes.size.toLong() > UINT_MAX) return null
                        entryArea.write(uintBytes(valueOffset, byteOrder))
                        dataArea.write(replacementBytes)
                    }
                }
            }
        }

        raf.seek(ifdOffset)
        raf.writeUShort(values.size, byteOrder)
        raf.write(entryArea.toByteArray())
        raf.writeUInt(original.nextIfdOffset, byteOrder)
        raf.write(dataArea.toByteArray())
        return ifdOffset
    }

    private fun alignedAppendOffset(raf: RandomAccessFile): Long {
        val offset = raf.length()
        raf.seek(offset)
        if ((offset and 1L) != 0L) {
            raf.write(0)
            return offset + 1L
        }
        return offset
    }

    private fun readTiffByteOrder(raf: RandomAccessFile): ByteOrder? {
        raf.seek(0)
        val marker0 = raf.readUnsignedByte()
        val marker1 = raf.readUnsignedByte()
        return when {
            marker0 == 'I'.code && marker1 == 'I'.code -> ByteOrder.LITTLE_ENDIAN
            marker0 == 'M'.code && marker1 == 'M'.code -> ByteOrder.BIG_ENDIAN
            else -> null
        }
    }

    private fun readIfd(
        raf: RandomAccessFile,
        offset: Long,
        byteOrder: ByteOrder,
    ): TiffIfd? {
        if (offset <= 0L || offset >= raf.length()) return null
        raf.seek(offset)
        val entryCount = raf.readUnsignedShort(byteOrder)
        val entries = ArrayList<TiffEntry>(entryCount)
        repeat(entryCount) {
            val tag = raf.readUnsignedShort(byteOrder)
            val type = raf.readUnsignedShort(byteOrder)
            val count = raf.readUnsignedInt(byteOrder)
            val inlineOrOffset = ByteArray(4)
            raf.readFully(inlineOrOffset)
            entries += TiffEntry(
                tag = tag,
                type = type,
                count = count,
                inlineOrOffset = inlineOrOffset
            )
        }
        return TiffIfd(
            entries = entries,
            nextIfdOffset = raf.readUnsignedInt(byteOrder)
        )
    }

    private fun encodeFloatArray(values: FloatArray, byteOrder: ByteOrder): ByteArray {
        val buffer = ByteBuffer
            .allocate(values.size * 4)
            .order(byteOrder)
        values.forEach { value -> buffer.putFloat(value.takeIf { it.isFinite() } ?: 0f) }
        return buffer.array()
    }

    private fun encodeLongArray(values: LongArray, byteOrder: ByteOrder): ByteArray {
        val buffer = ByteBuffer.allocate(values.size * 4).order(byteOrder)
        values.forEach { buffer.putInt((it and UINT_MAX).toInt()) }
        return buffer.array()
    }

    private fun readLongValues(
        raf: RandomAccessFile,
        entry: TiffEntry?,
        byteOrder: ByteOrder,
    ): LongArray? {
        if (entry == null || entry.type != TYPE_LONG || entry.count <= 0L ||
            entry.count > MAX_IFD_ENTRY_COUNT.toLong()
        ) {
            return null
        }
        if (entry.count == 1L) {
            return longArrayOf(readInlineLong(entry, byteOrder))
        }
        val offset = readInlineLong(entry, byteOrder)
        val byteCount = entry.count * 4L
        if (offset <= 0L || offset + byteCount > raf.length()) return null
        raf.seek(offset)
        return LongArray(entry.count.toInt()) { raf.readUnsignedInt(byteOrder) }
    }

    private fun readInlineLong(entry: TiffEntry, byteOrder: ByteOrder): Long =
        ByteBuffer.wrap(entry.inlineOrOffset).order(byteOrder).int.toLong() and UINT_MAX

    private fun inlineValue(value: ByteArray): ByteArray =
        ByteArray(4).also { value.copyInto(it, endIndex = value.size.coerceAtMost(4)) }

    private fun uintBytes(value: Long, byteOrder: ByteOrder): ByteArray =
        ByteBuffer
            .allocate(4)
            .order(byteOrder)
            .putInt((value and UINT_MAX).toInt())
            .array()

    private fun ByteArrayOutputStream.writeUShort(value: Int, byteOrder: ByteOrder) {
        write(ByteBuffer.allocate(2).order(byteOrder).putShort((value and 0xFFFF).toShort()).array())
    }

    private fun ByteArrayOutputStream.writeUInt(value: Long, byteOrder: ByteOrder) {
        write(uintBytes(value, byteOrder))
    }

    private fun RandomAccessFile.writeUShort(value: Int, byteOrder: ByteOrder) {
        write(ByteBuffer.allocate(2).order(byteOrder).putShort((value and 0xFFFF).toShort()).array())
    }

    private fun RandomAccessFile.writeUInt(value: Long, byteOrder: ByteOrder) {
        write(uintBytes(value, byteOrder))
    }

    private fun RandomAccessFile.readUnsignedShort(byteOrder: ByteOrder): Int {
        val bytes = ByteArray(2)
        readFully(bytes)
        return ByteBuffer.wrap(bytes).order(byteOrder).short.toInt() and 0xFFFF
    }

    private fun RandomAccessFile.readUnsignedInt(byteOrder: ByteOrder): Long {
        val bytes = ByteArray(4)
        readFully(bytes)
        return ByteBuffer.wrap(bytes).order(byteOrder).int.toLong() and UINT_MAX
    }

    private sealed class IfdValue {
        abstract val tag: Int
        abstract val type: Int
        abstract val count: Long

        data class Existing(val entry: TiffEntry) : IfdValue() {
            override val tag: Int = entry.tag
            override val type: Int = entry.type
            override val count: Long = entry.count
        }

        data class Replacement(val value: TiffValue) : IfdValue() {
            override val tag: Int = value.tag
            override val type: Int = value.type
            override val count: Long = value.count
        }
    }

    private data class TiffIfd(
        val entries: List<TiffEntry>,
        val nextIfdOffset: Long,
    )

    private data class TiffEntry(
        val tag: Int,
        val type: Int,
        val count: Long,
        val inlineOrOffset: ByteArray,
    )

    private data class TiffValue(
        val tag: Int,
        val type: Int,
        val count: Long,
        val bytes: ByteArray,
    )

    private const val MAX_IFD_ENTRY_COUNT = 65_535
    private const val UINT_MAX = 0xFFFF_FFFFL
}
