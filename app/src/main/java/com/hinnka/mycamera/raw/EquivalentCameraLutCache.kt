package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.utils.PLog
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.DataInputStream
import java.io.DataOutputStream
import java.io.EOFException
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.LinkedHashMap

/**
 * Endpoint LUTs map fixed source calibration through the inverse target DCP colour transform.
 * Runtime interpolation between these endpoint transforms is an approximation; it differs
 * from evaluating the inverse of a profile interpolated at the current white point.
 */
internal data class EquivalentCameraLuts(
    val key: String,
    val size: Int,
    val low: FloatArray,
    val high: FloatArray,
) {
    init {
        require(size == EquivalentCameraLutNative.SIZE) { "Equivalent camera LUT size must match its shader" }
        val expectedLength = size * size * size * 3
        require(low.size == expectedLength) { "Invalid low Equivalent camera LUT length: ${low.size}" }
        require(high.size == expectedLength) { "Invalid high Equivalent camera LUT length: ${high.size}" }
        require(low.all(Float::isFinite) && high.all(Float::isFinite)) {
            "Equivalent camera LUT contains a non-finite sample"
        }
    }
}

/** Persistent cache shared by engines, keyed by source calibration and target DCP content. */
internal class EquivalentCameraLutCache(private val target: EquivalentCameraTarget) {
    private val TAG = "EquivalentCameraLutCache"
    private val DCP_ASSET_PATH = target.assetPath
    private val CACHE_DIRECTORY = "equivalent_camera_calibration_luts"
    private val CACHE_EXTENSION = ".bin"
    private val SCHEMA_VERSION = 2
    private val MAGIC = 0x4c434c54 // LCLT
    private val SHA256_BYTES = 32
    private val HEADER_BYTES = 6 * Int.SIZE_BYTES + SHA256_BYTES
    private val MAX_MEMORY_ENTRIES = 4
    private val HASH_BUFFER_BYTES = 16 * 1024
    private val LOW_WHITE_XY = floatArrayOf(0.44757f, 0.40745f)
    private val HIGH_WHITE_XY = floatArrayOf(0.3127f, 0.3290f)
    private val LOW_TEMPERATURE = requireNotNull(DngSdkColorSpec.colorTemperatureForXy(LOW_WHITE_XY))
    private val HIGH_TEMPERATURE = requireNotNull(DngSdkColorSpec.colorTemperatureForXy(HIGH_WHITE_XY))

    /** Use the exact baked endpoint whites, so either endpoint selects its LUT exactly. */
    fun firstWeight(whiteXy: FloatArray): Float {
        val temperature = requireNotNull(DngSdkColorSpec.colorTemperatureForXy(whiteXy)) {
            "Equivalent camera calibration interpolation requires a valid source white point"
        }
        return ((1f / temperature - 1f / HIGH_TEMPERATURE) /
            (1f / LOW_TEMPERATURE - 1f / HIGH_TEMPERATURE)).coerceIn(0f, 1f)
    }

    private val lock = Any()
    @Volatile private var bundledProfileSha: String? = null
    @Volatile private var bundledProfile: DcpProfile? = null

    private fun targetProfile(context: Context): DcpProfile = bundledProfile ?: synchronized(lock) {
        bundledProfile ?: run {
            val info = requireNotNull(DcpManager(context).getAvailableDcps().firstOrNull {
                it.isBuiltIn && it.filePath == DCP_ASSET_PATH
            }) { "Bundled target DCP ${target.assetPath} is unavailable" }
            requireNotNull(DcpProfileParser.resolveProfile(context, info)) {
                "Unable to parse target DCP ${target.assetPath}"
            }.also { bundledProfile = it }
        }
    }

    /** Direct sensor input is interpreted in the target camera domain, including its WB/CCT. */
    fun directCameraWhiteXy(context: Context, metadata: RawMetadata): FloatArray =
        requireNotNull(DngSdkColorSpec.whiteXyForProfile(targetProfile(context), metadata)) {
            "Unable to resolve target camera white from RAW white balance"
        }

    /** Uses the existing target DCP; does not bake or enable equivalent-camera LUTs. */
    fun directCameraColorTransform(context: Context, whiteXy: FloatArray): DirectCameraColorTransform =
        DirectCameraColorTransform.fromProfile(targetProfile(context), whiteXy)

    private val memory = object : LinkedHashMap<String, EquivalentCameraLuts>(
        MAX_MEMORY_ENTRIES, 0.75f, true
    ) {
        override fun removeEldestEntry(
            eldest: MutableMap.MutableEntry<String, EquivalentCameraLuts>?
        ): Boolean = size > MAX_MEMORY_ENTRIES
    }

    /**
     * Returns the fixed-size low/high endpoint LUT pair for [source].
     *
     * The cache identity includes only fixed calibration fields from [source]. Per-photo
     * color correction matrices and white balance are intentionally absent from the key.
     */
    fun resolve(context: Context, source: RawCameraCalibration): EquivalentCameraLuts {
        val size = EquivalentCameraLutNative.SIZE
        // APK assets are immutable for the process lifetime. Slider edits do no asset I/O.
        val assetSha256 = bundledProfileSha ?: synchronized(lock) {
            bundledProfileSha ?: sha256Asset(context, DCP_ASSET_PATH).also { bundledProfileSha = it }
        }
        val key = buildKey(source, assetSha256, size)
        synchronized(lock) {
            memory[key]?.let {
                PLog.d(TAG, "LUT cache hit key=${key.take(KEY_LOG_LENGTH)} model=${target.name} size=$size")
                return it
            }

            val cacheFile = cacheFile(context, key)
            readCache(cacheFile, key, size)?.let { cached ->
                memory[key] = cached
                PLog.d(TAG, "LUT disk cache hit key=${key.take(KEY_LOG_LENGTH)} model=${target.name} size=$size")
                return cached
            }

            val startedAt = System.nanoTime()
            val generated = generate(context, source, key, size)
            writeCache(cacheFile, generated)
            memory[key] = generated
            PLog.d(
                TAG,
                "LUT generated key=${key.take(KEY_LOG_LENGTH)} model=${target.name} size=$size " +
                    "took=${(System.nanoTime() - startedAt) / 1_000_000L}ms"
            )
            return generated
        }
    }

    private fun generate(
        context: Context,
        source: RawCameraCalibration,
        key: String,
        size: Int,
    ): EquivalentCameraLuts {
        val sourceProfile = source.toDcpProfile()
        val targetProfile = targetProfile(context)
        require(targetProfile.hueSatDeltas1?.isValid == true &&
            targetProfile.hueSatDeltas2?.isValid == true && targetProfile.lookTable?.isValid == true) {
            "Bundled target camera DCP requires both HueSatMaps and its LookTable"
        }

        fun bakeEndpoint(whiteXy: FloatArray): FloatArray {
            val sourceToProfile = requireNotNull(
                DngSdkColorSpec.computeWhiteBalancedCameraToWorkingMatrix(
                    sourceProfile, whiteXy, ColorSpace.ProPhoto
                )
            ) { "Unable to compute source camera-to-ProPhoto matrix" }
            val targetToProfile = requireNotNull(
                DngSdkColorSpec.computeWhiteBalancedCameraToWorkingMatrix(
                    targetProfile, whiteXy, ColorSpace.ProPhoto
                )
            ) { "Unable to compute target camera-to-ProPhoto matrix" }
            val targetFromProfile = requireNotNull(DngSdkColorSpec.invertMatrix3x3(targetToProfile)) {
                "Unable to invert target camera-to-ProPhoto matrix"
            }
            return EquivalentCameraLutNative.bake(
                size = size,
                sourceToProfile = sourceToProfile,
                targetFromProfile = targetFromProfile,
                hueSatMap = endpointHueSatMap(targetProfile, whiteXy),
                lookTable = targetProfile.lookTable,
            ).also { lut ->
                val expected = expectedLutLength(size)
                require(lut.size == expected) {
                    "Equivalent camera native LUT length ${lut.size}, expected $expected"
                }
                require(lut.all(Float::isFinite)) { "Equivalent camera native LUT contains non-finite samples" }
            }
        }

        return EquivalentCameraLuts(
            key = key,
            size = size,
            low = bakeEndpoint(LOW_WHITE_XY),
            high = bakeEndpoint(HIGH_WHITE_XY),
        )
    }

    private fun endpointHueSatMap(profile: DcpProfile, whiteXy: FloatArray): DcpHueSatMap? {
        val first = profile.hueSatDeltas1?.takeIf { it.isValid }
        val second = profile.hueSatDeltas2?.takeIf { it.isValid }
        if (first == null) return second
        if (second == null) return first
        require(first.hueDivisions == second.hueDivisions &&
            first.satDivisions == second.satDivisions &&
            first.valueDivisions == second.valueDivisions &&
            first.encoding == second.encoding
        ) { "target camera HueSatMap endpoint dimensions or encoding differ" }
        val weight = DngSdkColorSpec.hueSatWeightForWhite(
            profile.calibrationIlluminant1,
            profile.calibrationIlluminant2,
            whiteXy,
        )
        return when {
            weight >= 1f -> first
            weight <= 0f -> second
            else -> first.copy(values = FloatArray(first.values.size) { index ->
                first.values[index] * weight + second.values[index] * (1f - weight)
            })
        }
    }

    private fun buildKey(
        source: RawCameraCalibration,
        assetSha256: String,
        size: Int,
    ): String {
        val digest = MessageDigest.getInstance("SHA-256")
        digest.update("equivalent-camera-calibration-lut-cache".toByteArray(StandardCharsets.UTF_8))
        digest.putInt(SCHEMA_VERSION)
        digest.putInt(EquivalentCameraLutNative.VERSION)
        digest.putInt(size)
        digest.putFloat(EquivalentCameraLutNative.INPUT_MAX)
        digest.putFloat(EquivalentCameraLutNative.LINEAR_FRACTION)
        digest.putFloat(LOW_WHITE_XY[0])
        digest.putFloat(LOW_WHITE_XY[1])
        digest.putFloat(HIGH_WHITE_XY[0])
        digest.putFloat(HIGH_WHITE_XY[1])
        digest.update(assetSha256.toByteArray(StandardCharsets.US_ASCII))
        digest.putInt(source.calibrationIlluminant1)
        digest.putInt(source.calibrationIlluminant2)
        digest.putFloatArray(source.colorMatrix1)
        digest.putFloatArray(source.colorMatrix2)
        digest.putFloatArray(source.forwardMatrix1)
        digest.putFloatArray(source.forwardMatrix2)
        digest.putFloatArray(source.analogBalance)
        digest.putFloatArray(source.cameraCalibration1)
        digest.putFloatArray(source.cameraCalibration2)
        return digest.digest().toHexString()
    }

    private fun cacheFile(context: Context, key: String): File =
        File(File(context.filesDir, CACHE_DIRECTORY), "$key$CACHE_EXTENSION")

    private fun readCache(file: File, key: String, size: Int): EquivalentCameraLuts? {
        if (!file.isFile) return null
        return runCatching {
            if (file.length() < HEADER_BYTES) throw CacheCorruptException("truncated header")
            DataInputStream(BufferedInputStream(FileInputStream(file))).use { input ->
                val magic = input.readInt()
                val schema = input.readInt()
                val storedSize = input.readInt()
                val lowLength = input.readInt()
                val highLength = input.readInt()
                val payloadLength = input.readInt()
                val expectedLength = expectedLutLength(size)
                if (magic != MAGIC || schema != SCHEMA_VERSION || storedSize != size ||
                    lowLength != expectedLength || highLength != expectedLength ||
                    payloadLength != (lowLength + highLength) * Float.SIZE_BYTES ||
                    file.length() != HEADER_BYTES.toLong() + payloadLength
                ) {
                    throw CacheCorruptException("header mismatch")
                }
                val expectedSha = ByteArray(SHA256_BYTES).also(input::readFully)
                val payload = ByteArray(payloadLength).also(input::readFully)
                if (input.read() != -1) throw CacheCorruptException("trailing data")
                if (!expectedSha.contentEquals(sha256Bytes(payload))) {
                    throw CacheCorruptException("payload SHA-256 mismatch")
                }
                val floats = ByteBuffer.wrap(payload).order(ByteOrder.LITTLE_ENDIAN).asFloatBuffer()
                val low = FloatArray(lowLength)
                val high = FloatArray(highLength)
                floats.get(low)
                floats.get(high)
                EquivalentCameraLuts(key, size, low, high)
            }
        }.onFailure { error ->
            PLog.w(TAG, "Corrupt Equivalent camera LUT cache ${file.name}; regenerating", error)
            file.delete()
        }.getOrNull()
    }

    private fun writeCache(file: File, luts: EquivalentCameraLuts) {
        runCatching {
            file.parentFile?.mkdirs()
            val payloadBuffer = ByteBuffer
                .allocate((luts.low.size + luts.high.size) * Float.SIZE_BYTES)
                .order(ByteOrder.LITTLE_ENDIAN)
            payloadBuffer.asFloatBuffer().apply {
                put(luts.low)
                put(luts.high)
            }
            val payload = payloadBuffer.array()
            val temporary = File.createTempFile(".${luts.key}.", ".tmp", file.parentFile)
            try {
                FileOutputStream(temporary).use { stream ->
                    DataOutputStream(BufferedOutputStream(stream)).use { output ->
                        output.writeInt(MAGIC)
                        output.writeInt(SCHEMA_VERSION)
                        output.writeInt(luts.size)
                        output.writeInt(luts.low.size)
                        output.writeInt(luts.high.size)
                        output.writeInt(payload.size)
                        output.write(sha256Bytes(payload))
                        output.write(payload)
                        output.flush()
                        stream.fd.sync()
                    }
                }
                check(temporary.renameTo(file)) { "Unable to atomically install ${file.name}" }
            } finally {
                temporary.delete()
            }
        }.onFailure { error ->
            // A cache write must never turn a successfully generated color transform into a
            // fallback path. The generated pair is retained in memory and returned by resolve.
            PLog.w(TAG, "Unable to persist Equivalent camera LUT cache ${file.name}", error)
        }
    }

    private fun expectedLutLength(size: Int): Int = size * size * size * 3

    private fun sha256Asset(context: Context, path: String): String {
        val digest = MessageDigest.getInstance("SHA-256")
        context.assets.open(path).use { input ->
            val buffer = ByteArray(HASH_BUFFER_BYTES)
            while (true) {
                val count = input.read(buffer)
                if (count < 0) break
                digest.update(buffer, 0, count)
            }
        }
        return digest.digest().toHexString()
    }

    private fun sha256Bytes(bytes: ByteArray): ByteArray =
        MessageDigest.getInstance("SHA-256").digest(bytes)

    private fun MessageDigest.putInt(value: Int) {
        update(ByteBuffer.allocate(Int.SIZE_BYTES).order(ByteOrder.LITTLE_ENDIAN).putInt(value).array())
    }

    private fun MessageDigest.putFloat(value: Float) = putInt(value.toRawBits())

    private fun MessageDigest.putFloatArray(values: FloatArray?) {
        if (values == null) {
            putInt(-1)
            return
        }
        putInt(values.size)
        values.forEach { putFloat(it) }
    }

    private fun ByteArray.toHexString(): String = buildString(size * 2) {
        for (value in this@toHexString) {
            append(HEX[(value.toInt() ushr 4) and 0x0f])
            append(HEX[value.toInt() and 0x0f])
        }
    }

    private class CacheCorruptException(message: String) : EOFException(message)

    private val KEY_LOG_LENGTH = 12
    private val HEX = "0123456789abcdef"
}

internal enum class EquivalentCameraTarget(val assetPath: String) {
    LumixS9("dcp/Panasonic DC-S9 Adobe Standard.dcp"),
    HasselbladX1D50("dcp/Hasselblad X1D-50 Adobe Standard.dcp");

    val calibrationCache by lazy { EquivalentCameraLutCache(this) }
}
